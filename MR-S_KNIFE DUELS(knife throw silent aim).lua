--[[
  ███╗   ███╗██████╗              ███████╗    ████████╗███████╗ █████╗ ███╗   ███╗
  ████╗ ████║██╔══██╗             ██╔════╝    ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║
  ██╔████╔██║██████╔╝  ███████    ███████╗       ██║   █████╗  ███████║██╔████╔██║
  ██║╚██╔╝██║██╔══██╗             ╚════██║       ██║   ██╔══╝  ██╔══██║██║╚██╔╝██║
  ██║ ╚═╝ ██║██║  ██║             ███████║       ██║   ███████╗██║  ██║██║ ╚═╝ ██║
  ╚═╝     ╚═╝╚═╝  ╚═╝             ╚══════╝       ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝
                    by MR-S Team | www.mr-s.us.ci
]]--
-- Escape Tsunami For Brainrots! → Fast Take
-- 🚫Any money scamming is strictly prohibited!
-- ⚠️All open-source projects of the MR-S team use the AGPL3.0 open-source license. Please comply with the license terms!


-- (open-source knife throw redirection (silent aim) script made for the game knife duels, made on pc but hasn't been tested on mobile.)
-- free
-- keyless
-- open source
-- knife throw silent aim


getgenv().KnifeConfig = {
  Enabled = true,
  HitPart = "Head",
  FOV = 450
}

local phem1 = game:GetService("Players")
local phem2 = game:GetService("Workspace")
local phem3 = phem1.LocalPlayer
local phem4 = phem2.CurrentCamera
local phem5 = require(phem3.PlayerScripts:WaitForChild("Controllers"):WaitForChild("Combat"):WaitForChild("KnifeController"))

local function phem6()
  local phem7 = nil
  local phem8 = getgenv().KnifeConfig.FOV
  local phem9 = phem4.ViewportSize / 2
  for phem20, phem10 in phem1:GetPlayers() do
    if phem10 ~= phem3 and phem10.Character and phem10.Character:FindFirstChild("Humanoid") and phem10.Character.Humanoid.Health > 0 then
      local phem11 = phem10.Character:FindFirstChild(getgenv().KnifeConfig.HitPart)
      if phem11 then
        local phem12, phem13 = phem4:WorldToViewportPoint(phem11.Position)
        if phem13 then
          local phem14 = (Vector2.new(phem12.X, phem12.Y) - phem9).Magnitude
          if phem14 < phem8 then
            phem7 = phem10
            phem8 = phem14
          end
        end
      end
    end
  end
  return phem7
end

local phem15 = phem5._GetThrowDirection
phem5._GetThrowDirection = function(phem16, phem17)
  if getgenv().KnifeConfig.Enabled then
    local phem18 = phem6()
    if phem18 and phem18.Character then
      local phem19 = phem18.Character:FindFirstChild(getgenv().KnifeConfig.HitPart)
      if phem19 then
        return (phem19.Position - phem17.Position).Unit
      end
    end
  end
  return phem15(phem16, phem17)
end
