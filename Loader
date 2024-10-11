-- OBFUSCATE AND SAVE A VERSION ON PC

repeat task.wait() until game:IsLoaded()

--// CONFIG

local GeneralWarningDuration = 15 -- How many seconds waited for a response to general scripts
local InjectionNoticeDuration = 5 
local DoubleInjectionNoticeDuration = 5

--// SERVICES

local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")

--// REQUIREMENTS

local PlaceID = game.PlaceId
local CoreGui = game.CoreGui
local IsStudio = false

local Bindable = Instance.new("BindableFunction")
local LoadGeneralGUI = nil

local GameListTable = {
	"" -- This game
}

--// NOTIFICATION FUNCTION

function Bindable.OnInvoke(response)
	if response == "Yes" then
		LoadGeneralGUI = true
	else
		LoadGeneralGUI = false
	end
end

--// STUDIO CHECK

if RunService:IsStudio() then
	IsStudio = true
	
	StarterGui:SetCore("SendNotification", {
		Title = "Notice:";
		Text = "\n You cannot run this script in studio! \n";
		Button1 = "Sorry";
		Duration = 600;
	})
	task.wait(0.5)
	script:Destroy()
end

--// EXISTING INJECTION CHECK

local LimitlessGUI = CoreGui:FindFirstChild("LimitlessContainer")

if LimitlessGUI == nil and IsStudio == false then -- If not injected and not in studio
	if table.find(GameListTable, tostring(PlaceID)) then -- Game is valid
		
		loadstring(game:HttpGet("https://raw.githubusercontent.com/deadplev/Limitless/main/"..PlaceID))()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/deadplev/Limitless/main/DetectCheck"))()
		
		StarterGui:SetCore("SendNotification", {
			Title = tostring(game.Name);
			Text = "\n Loading Script GUI... \n";
			Duration = InjectionNoticeDuration;
		})
		
	else
		
		StarterGui:SetCore("SendNotification", {
			Title = "No Available Scripts";
			Text = "\n Would you like to load some general scripts? \n";
			Callback = Bindable;
			Button1 = "Yes";
			Button2 = "No";
			Duration = GeneralWarningDuration;
		})
		
		task.delay(GeneralWarningDuration+2, function()
			if LoadGeneralGUI == nil then -- No Response
				
				StarterGui:SetCore("SendNotification", {
					Title = "No Response";
					Text = "\n Removing Script... \n";
					Duration = 5;
				})
				
				script:Destroy()
			end
		end)
		
		repeat task.wait() until LoadGeneralGUI ~= nil
		
		if LoadGeneralGUI == true then
			
			loadstring(game:HttpGet("https://raw.githubusercontent.com/deadplev/Limitless/main/General"))()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/deadplev/Limitless/main/DetectCheck"))()
			
			StarterGui:SetCore("SendNotification", {
				Title = tostring(game.Name);
				Text = "\n Loading General Script GUI... \n";
				Duration = InjectionNoticeDuration;
			})
			
		else
			StarterGui:SetCore("SendNotification", {
				Title = "Notice:";
				Text = "\n Removing Script... \n";
				Duration = 5;
			})
			script:Destroy() -- Script Removed
		end
		
	end
elseif LimitlessGUI ~= nil and IsStudio == false then
	
	StarterGui:SetCore("SendNotification", {
		Title = "Notice:";
		Text = "\n You have already injected this script! \n";
		Duration = DoubleInjectionNoticeDuration;
	})
	
end
