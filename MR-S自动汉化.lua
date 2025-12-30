-- CN
-- 开源作者：MR
-- http://qins.mc.hi.cn/MR-S
-- 全源开源，应该没有人闲的没事拿这个圈钱吧？
-- 最后：请标明来源，谢谢！

-- EN
-- Open Source Author: MR
-- http://qins.mc.hi.cn/MR-S
-- Fully open-source; hopefully no one would bother monetizing this, right?
-- Lastly: Please credit the source, thank you!



local OrionLib = loadstring(game:HttpGet("https://pastefy.app/5PiSO8oW/raw"))()
local Window = OrionLib:MakeWindow({Name = "MR-S", SubTitle = "自动汉化"})

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local CoreGui = game:GetService("CoreGui")

-- 配置表
local config = {
    targetLanguage = "zh-CN",
    scanInterval = 2,
    maxTextLength = 50000000,
    translatePlayerNames = false,
    translateGameTitles = false,
    cacheEnabled = true,
    logEnabled = true
}

local TARGET_LANGUAGE = config.targetLanguage
local SCAN_INTERVAL = config.scanInterval
local MAX_TEXT_LENGTH = config.maxTextLength

local translatedCache = {}
local translatedObjects = {}
local isTranslationEnabled = false
local connection = nil
local translationHistory = {}
local MAX_HISTORY = 50

-- 使用表查找代替循环检查危险命令
local DANGEROUS_COMMANDS = {
    "neon", "shine", "ghost", "gold", "spin", 
    "bighead", "smallhead", "giantdwarf", "squash"
}

local DANGEROUS_COMMANDS_LOOKUP = {}
for _, cmd in ipairs(DANGEROUS_COMMANDS) do
    DANGEROUS_COMMANDS_LOOKUP[cmd] = true
end

local SUPPORTED_UI_TYPES = {
    "TextLabel", "TextButton", "TextBox", "TextLabel", 
    "Frame", "ScrollingFrame", "ImageButton", "ImageLabel"
}

local LANGUAGE_PATTERNS = {
    ["zh-CN"] = {
        pattern = "[\199-\244][\128-\191]*[\128-\191]",
        exclude = "[\227][\128-\191][\128-\191]"
    },
    ["zh-TW"] = {
        pattern = "[\227][\128-\191][\128-\191]"
    },
    ["ja"] = {
        pattern = "[\123-\125]|[\199-\244][\128-\191]*[\128-\191]",
        exclude = "[\199-\244][\128-\191]*[\128-\191]"
    },
    ["ko"] = {
        pattern = "[\234-\235][\128-\191][\128-\191]|[\236-\237][\128-\191][\128-\191]"
    },
    ["ar"] = {
        pattern = "[\216-\219][\128-\191]"
    },
    ["ru"] = {
        pattern = "[\208-\209][\128-\191]"
    },
    ["th"] = {
        pattern = "[\224-\231][\128-\191]"
    },
    ["en"] = {
        pattern = "[A-Za-z]",
        exclude = "[\199-\244][\128-\191]*[\128-\191]"
    }
}

-- 排除列表
local excludeList = {
    "PlayerGui",
    "CoreGui",
    "Chat",
    "Notification",
}

-- 日志系统
local function log(message, level)
    if not config.logEnabled then return end
    level = level or "INFO"
    local timestamp = os.date("%Y-%m-%d %H:%M:%S")
    print(string.format("[%s] [%s] %s", timestamp, level, message))
end

-- 优化危险文本检测
local function isDangerousText(text)
    if not text or type(text) ~= "string" then return false end
    local lowerText = text:lower()
    for word in lowerText:gmatch("%w+") do
        if DANGEROUS_COMMANDS_LOOKUP[word] then
            return true
        end
    end
    return false
end

local function shouldSkipTranslation(text)
    if not text or text == "" or translatedCache[text] then
        return true
    end
    
    if text:match("^%s*$") or 
       text:match("^[0-9%.%s,:/]+$") or 
       #text > MAX_TEXT_LENGTH or
       isDangerousText(text) then
        translatedCache[text] = text
        return true
    end
    
    return false
end

local function detectLanguage(text)
    if not text or type(text) ~= "string" or text == "" then
        return "en"
    end
    
    if text:match(LANGUAGE_PATTERNS["zh-CN"].pattern) and 
       (not LANGUAGE_PATTERNS["zh-CN"].exclude or not text:match(LANGUAGE_PATTERNS["zh-CN"].exclude)) then
        return "zh-CN"
    end
    
    if text:match(LANGUAGE_PATTERNS["zh-TW"].pattern) then
        return "zh-TW"
    end
    
    if text:match(LANGUAGE_PATTERNS["ja"].pattern) and 
       (not LANGUAGE_PATTERNS["ja"].exclude or not text:match(LANGUAGE_PATTERNS["ja"].exclude)) then
        return "ja"
    end
    
    if text:match(LANGUAGE_PATTERNS["ko"].pattern) then
        return "ko"
    end
    
    if text:match(LANGUAGE_PATTERNS["ar"].pattern) then
        return "ar"
    end
    
    if text:match(LANGUAGE_PATTERNS["ru"].pattern) then
        return "ru"
    end
    
    if text:match(LANGUAGE_PATTERNS["th"].pattern) then
        return "th"
    end
    
    return "en"
end

local function shouldExcludeGui(gui)
    for _, excludeName in ipairs(excludeList) do
        if gui:IsA(excludeName) or gui.Name:find(excludeName) then
            return true
        end
    end
    return false
end

local function addToHistory(original, translated)
    table.insert(translationHistory, 1, {
        original = original,
        translated = translated,
        time = os.time()
    })
    
    if #translationHistory > MAX_HISTORY then
        table.remove(translationHistory, MAX_HISTORY + 1)
    end
end

local function translate(text)
    local success, result = pcall(function()
        if shouldSkipTranslation(text) then
            return translatedCache[text] or text
        end

        local sourceLang = detectLanguage(text)
        
        if sourceLang == "zh-CN" or sourceLang == "zh-TW" then
            translatedCache[text] = text
            return text
        end

        local success, response = pcall(function()
            return game:HttpGet(
                ("https://translate.googleapis.com/translate_a/single?client=gtx&sl=%s&tl=%s&dt=t&q=%s")
                :format(sourceLang, TARGET_LANGUAGE, HttpService:UrlEncode(text))
            )
        end)

        if success and response then
            local ok, data = pcall(HttpService.JSONDecode, HttpService, response)
            if ok and data and data[1] then
                local translatedText = ""
                for _, segment in ipairs(data[1]) do
                    if segment[1] then
                        translatedText = translatedText .. segment[1]
                    end
                end
                
                if translatedText ~= "" and translatedText ~= text then
                    translatedCache[text] = translatedText
                    addToHistory(text, translatedText)
                    log("翻译: \"" .. text .. "\" -> \"" .. translatedText .. "\"")
                    return translatedText
                end
            end
        end

        local function tryAlternativeAPI()
            local success, response = pcall(function()
                return game:HttpGet(
                    ("https://api.mymemory.translated.net/get?q=%s&langpair=%s|%s")
                    :format(HttpService:UrlEncode(text), sourceLang, TARGET_LANGUAGE)
                )
            end)
            
            if success and response then
                local ok, data = pcall(HttpService.JSONDecode, HttpService, response)
                if ok and data and data.responseData and data.responseData.translatedText then
                    return data.responseData.translatedText
                end
            end
            return nil
        end

        local altTranslation = tryAlternativeAPI()
        if altTranslation then
            translatedCache[text] = altTranslation
            addToHistory(text, altTranslation)
            log("备选API翻译: \"" .. text .. "\" -> \"" .. altTranslation .. "\"")
            return altTranslation
        end

        translatedCache[text] = text
        return text
    end)
    
    if not success then
        log("翻译出错: " .. tostring(result), "ERROR")
        return text
    end
    
    return result
end

local function hasTextContent(gui)
    if gui:IsA("TextLabel") or gui:IsA("TextButton") or gui:IsA("TextBox") then
        return gui.Text and gui.Text ~= ""
    elseif gui:IsA("ImageButton") or gui:IsA("ImageLabel") then
        return gui:GetAttribute("Text") or gui.Name ~= ""
    end
    return false
end

local function getTextContent(gui)
    if gui:IsA("TextLabel") or gui:IsA("TextButton") or gui:IsA("TextBox") then
        return gui.Text
    elseif gui:IsA("ImageButton") or gui:IsA("ImageLabel") then
        return gui:GetAttribute("Text") or gui.Name
    end
    return nil
end

local function setTextContent(gui, text)
    if gui:IsA("TextLabel") or gui:IsA("TextButton") or gui:IsA("TextBox") then
        gui.Text = text
    elseif gui:IsA("ImageButton") or gui:IsA("ImageLabel") then
        gui:SetAttribute("OriginalText", getTextContent(gui))
        gui:SetAttribute("Text", text)
    end
end

local function setupGuiListeners()
    -- 监听新GUI元素添加
    local function onDescendantAdded(descendant)
        if not isTranslationEnabled then return end
        if shouldExcludeGui(descendant) then return end
        
        if hasTextContent(descendant) and not translatedObjects[descendant] then
            local text = getTextContent(descendant)
            if text and text ~= "" then
                translatedObjects[descendant] = true
                local translatedText = translate(text)
                if getTextContent(descendant) == text then
                    setTextContent(descendant, translatedText)
                end
            end
        end
    end
    
    -- 监听文本变化
    local function onTextChanged(gui)
        if not isTranslationEnabled or not translatedObjects[gui] then return end
        if shouldExcludeGui(gui) then return end
        
        local text = getTextContent(gui)
        if text and text ~= "" then
            local translatedText = translate(text)
            if getTextContent(gui) == text then
                setTextContent(gui, translatedText)
            end
        end
    end
    
    -- 为现有和新增元素设置监听
    for _, gui in ipairs(playerGui:GetDescendants()) do
        if (gui:IsA("TextLabel") or gui:IsA("TextButton") or gui:IsA("TextBox")) and not shouldExcludeGui(gui) then
            gui:GetPropertyChangedSignal("Text"):Connect(function()
                onTextChanged(gui)
            end)
        end
    end
    
    playerGui.DescendantAdded:Connect(onDescendantAdded)
    CoreGui.DescendantAdded:Connect(onDescendantAdded)
end

local function scanAndTranslate()
    local count = 0
    
    for _, gui in ipairs(playerGui:GetDescendants()) do
        if shouldExcludeGui(gui) then
            continue
        end
        
        if not translatedObjects[gui] and hasTextContent(gui) then
            local text = getTextContent(gui)
            if text and text ~= "" then
                translatedObjects[gui] = true
                local translatedText = translate(text)
                if getTextContent(gui) == text then
                    setTextContent(gui, translatedText)
                    count = count + 1
                end
            end
        end
    end
    
    for _, gui in ipairs(CoreGui:GetDescendants()) do
        if shouldExcludeGui(gui) then
            continue
        end
        
        if not translatedObjects[gui] and hasTextContent(gui) then
            local text = getTextContent(gui)
            if text and text ~= "" then
                translatedObjects[gui] = true
                local translatedText = translate(text)
                if getTextContent(gui) == text then
                    setTextContent(gui, translatedText)
                    count = count + 1
                end
            end
        end
    end
    
    return count
end

-- 创建UI
local TranslationTab = Window:MakeTab({
    Title = "翻译",
    Icon = "language"
})

TranslationTab:AddSection("汉化")

TranslationTab:AddToggle({
    Name = "自动翻译",
    Default = false,
    Callback = function(state)
        isTranslationEnabled = state
        if state then
            log("自动翻译已开启，立即执行10次扫描")
            
            if connection then
                connection:Disconnect()
                connection = nil
            end
            
            for i = 1, 10 do
                local count = scanAndTranslate()
                if count > 0 then
                    log("第" .. i .. "次扫描翻译了 " .. count .. " 个文本")
                end
                task.wait(0.1) 
            end
            
            -- 然后设置定期扫描
            connection = RunService.Heartbeat:Connect(function()
                if isTranslationEnabled then
                    local count = scanAndTranslate()
                    if count > 0 then
                        log("自动扫描翻译了 " .. count .. " 个文本")
                    end
                    task.wait(SCAN_INTERVAL)
                end
            end)
            
            -- 设置GUI监听
            setupGuiListeners()
        else
            if connection then
                connection:Disconnect()
                connection = nil
            end
            log("自动翻译已关闭")
        end
    end
})

TranslationTab:AddButton({
    Name = "立即扫描翻译",
    Callback = function()
        local count = scanAndTranslate()
        OrionLib:MakeNotification({
            Name = "扫描完成",
            Content = "翻译了 " .. count .. " 个文本",
            Time = 5
        })
    end
})

TranslationTab:AddButton({
    Name = "清空翻译缓存",
    Callback = function()
        translatedCache = {}
        translatedObjects = {}
        OrionLib:MakeNotification({
            Name = "缓存已清空",
            Content = "下次扫描将重新翻译所有文本",
            Time = 5
        })
    end
})

TranslationTab:AddDropdown({
    Name = "目标语言",
    Default = "zh-CN",
    Options = {"zh-CN", "zh-TW", "en", "ja", "ko", "ru"},
    Callback = function(value)
        config.targetLanguage = value
        TARGET_LANGUAGE = value
        translatedCache = {} -- 清空缓存以重新翻译
        log("目标语言已设置为: " .. value)
    end
})

TranslationTab:AddSlider({
    Name = "扫描间隔(秒)",
    Min = 0.5,
    Max = 10,
    Default = 2,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 0.5,
    Callback = function(value)
        config.scanInterval = value
        SCAN_INTERVAL = value
        log("扫描间隔已设置为: " .. value .. "秒")
    end
})

TranslationTab:AddToggle({
    Name = "翻译玩家名称",
    Default = false,
    Callback = function(state)
        config.translatePlayerNames = state
        log("翻译玩家名称: " .. (state and "开启" or "关闭"))
    end
})

TranslationTab:AddToggle({
    Name = "翻译游戏标题",
    Default = false,
    Callback = function(state)
        config.translateGameTitles = state
        log("翻译游戏标题: " .. (state and "开启" or "关闭"))
    end
})



TranslationTab:AddTextbox({
    Name = "手动翻译",
    Default = "输入要翻译的文本",
    TextDisappear = true,
    Callback = function(text)
        if text and text ~= "" then
            local translated = translate(text)
            OrionLib:MakeNotification({
                Name = "翻译结果",
                Content = text .. " → " .. translated,
                Time = 10
            })
        end
    end
})

TranslationTab:AddButton({
    Name = "查看翻译历史",
    Callback = function()
        local historyText = "最近翻译记录:\n\n"
        for i, item in ipairs(translationHistory) do
            if i > 5 then break end -- 只显示最近5条
            historyText = historyText .. string.format("[%s] %s → %s\n", 
                os.date("%H:%M:%S", item.time), 
                item.original, 
                item.translated)
        end
        
        OrionLib:MakeNotification({
            Name = "翻译历史",
            Content = historyText,
            Time = 15
        })
    end
})

-- 初始化
task.spawn(function()
    task.wait(3)
    local count = scanAndTranslate()
    if count > 0 then
        log("初始扫描翻译了 " .. count .. " 个文本")
    end
    setupGuiListeners()
end)
