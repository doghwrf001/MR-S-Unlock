-- CN
-- 开源by：MR
-- http://qins.mc.hi.cn/MR-S
-- 功能效果没测试过,自行测试,如有损坏自行修复！
-- 全源开源，应该没有人闲的没事拿这个圈钱吧？
-- 最后：请标明来源，谢谢！

-- EN
-- Open Source by: MR
-- http://qins.mc.hi.cn/MR-S
-- Functionality hasn't been tested; test it yourself and fix any issues if damaged!
-- Fully open-source; hopefully no one would bother monetizing this, right?
-- Lastly: Please credit the source, thank you!


local Players = game:GetService("Players")
local placeId = game.PlaceId

-- scp -1
local function loadSCPHub()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/voidpathhub/VoidPath-SCP-Roleplay/refs/heads/main/VoidPath%20Script%20Hub.luau"))()
end

-- scp -2
local function loadRakeHub()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/voidpathhub/Void-Path-Rake-The-Rake-Remastered/refs/heads/main/VoidPath%20Script%20Hub.luau"))()
end

-- scp -3
local function load3008Hub()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/voidpathhub/VoidPath-SCP-3008/refs/heads/main/VoidPath%20Script%20Hub.luau"))()
end

if placeId == 2768379856 then -- SCP - 3008
    load3008Hub()
elseif placeId == 5041144419 then -- SCP: Roleplay
    loadSCPHub()
elseif placeId == 2413927524 then -- The Rake: Remastered
    loadRakeHub()
else
    Players.LocalPlayer:Kick("Game not supported.")
end
