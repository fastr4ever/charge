-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local Input = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local Go = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Nokey = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Close = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local UICorner_6 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
Frame.Position = UDim2.new(0.343280673, 0, 0.112244897, 0)
Frame.Size = UDim2.new(0, 292, 0, 459)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.173615247, 0, 0.0252100844, 0)
TextLabel.Size = UDim2.new(0, 189, 0, 51)
TextLabel.Font = Enum.Font.Arcade
TextLabel.Text = "Loader"
TextLabel.TextColor3 = Color3.fromRGB(204, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.252614051, 0, 0.198257074, 0)
ImageLabel.Size = UDim2.new(0, 150, 0, 150)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner.CornerRadius = UDim.new(0.125, 0)
UICorner.Parent = ImageLabel

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.159734637, 0, 0.543417394, 0)
TextLabel_2.Size = UDim2.new(0, 198, 0, 50)
TextLabel_2.Font = Enum.Font.SciFi
TextLabel_2.Text = "Hey you ! Please enter the key to load this script."
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 13.000

Input.Name = "Input"
Input.Parent = Frame
Input.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
Input.BackgroundTransparency = 0.750
Input.Position = UDim2.new(0.157534242, 0, 0.683473408, 0)
Input.Size = UDim2.new(0, 200, 0, 50)
Input.Font = Enum.Font.SourceSans
Input.Text = ""
Input.TextColor3 = Color3.fromRGB(0, 0, 0)
Input.TextScaled = true
Input.TextSize = 14.000
Input.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0.349999994, 0)
UICorner_2.Parent = Input

Go.Name = "Go"
Go.Parent = Frame
Go.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
Go.BackgroundTransparency = 0.500
Go.Position = UDim2.new(0.0410958901, 0, 0.862745106, 0)
Go.Size = UDim2.new(0, 132, 0, 38)
Go.Font = Enum.Font.SourceSans
Go.Text = "Go !"
Go.TextColor3 = Color3.fromRGB(0, 0, 0)
Go.TextScaled = true
Go.TextSize = 14.000
Go.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0.5, 0)
UICorner_3.Parent = Go

Nokey.Name = "Nokey"
Nokey.Parent = Frame
Nokey.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
Nokey.BackgroundTransparency = 0.500
Nokey.Position = UDim2.new(0.510273933, 0, 0.862745106, 0)
Nokey.Size = UDim2.new(0, 131, 0, 38)
Nokey.Font = Enum.Font.SourceSans
Nokey.Text = "I don't have a key..."
Nokey.TextColor3 = Color3.fromRGB(0, 0, 0)
Nokey.TextScaled = true
Nokey.TextSize = 14.000
Nokey.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0.5, 0)
UICorner_4.Parent = Nokey

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Close.Position = UDim2.new(0.854940116, 0, 0.0252100844, 0)
Close.Size = UDim2.new(0, 30, 0, 30)
Close.Font = Enum.Font.Ubuntu
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0.5, 0)
UICorner_5.Parent = Close

UICorner_6.CornerRadius = UDim.new(0.075000003, 0)
UICorner_6.Parent = Frame

-- Module Scripts:

local fake_module_scripts = {}

do -- Frame.DraggableObject
	local script = Instance.new('ModuleScript', Frame)
	script.Name = "DraggableObject"
	local function module_script()
		--[[
			@Author: Spynaz
			@Description: Enables dragging on GuiObjects. Supports both mouse and touch.
			
			For instructions on how to use this module, go to this link:
			https://devforum.roblox.com/t/simple-module-for-creating-draggable-gui-elements/230678
		--]]
		
		local UDim2_new = UDim2.new
		
		local UserInputService = game:GetService("UserInputService")
		
		local DraggableObject 		= {}
		DraggableObject.__index 	= DraggableObject
		
		-- Sets up a new draggable object
		function DraggableObject.new(Object)
			local self 			= {}
			self.Object			= Object
			self.DragStarted	= nil
			self.DragEnded		= nil
			self.Dragged		= nil
			self.Dragging		= false
			
			setmetatable(self, DraggableObject)
			
			return self
		end
		
		-- Enables dragging
		function DraggableObject:Enable()
			local object			= self.Object
			local dragInput			= nil
			local dragStart			= nil
			local startPos			= nil
			local preparingToDrag	= false
			
			-- Updates the element
			local function update(input)
				local delta 		= input.Position - dragStart
				local newPosition	= UDim2_new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
				object.Position 	= newPosition
			
				return newPosition
			end
			
			self.InputBegan = object.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					preparingToDrag = true
					--[[if self.DragStarted then
						self.DragStarted()
					end
					
					dragging	 	= true
					dragStart 		= input.Position
					startPos 		= Element.Position
					--]]
					
					local connection 
					connection = input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End and (self.Dragging or preparingToDrag) then
							self.Dragging = false
							connection:Disconnect()
							
							if self.DragEnded and not preparingToDrag then
								self.DragEnded()
							end
							
							preparingToDrag = false
						end
					end)
				end
			end)
			
			self.InputChanged = object.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					dragInput = input
				end
			end)
			
			self.InputChanged2 = UserInputService.InputChanged:Connect(function(input)
				if object.Parent == nil then
					self:Disable()
					return
				end
				
				if preparingToDrag then
					preparingToDrag = false
					
					if self.DragStarted then
						self.DragStarted()
					end
					
					self.Dragging	= true
					dragStart 		= input.Position
					startPos 		= object.Position
				end
				
				if input == dragInput and self.Dragging then
					local newPosition = update(input)
					
					if self.Dragged then
						self.Dragged(newPosition)
					end
				end
			end)
		end
		
		-- Disables dragging
		function DraggableObject:Disable()
			self.InputBegan:Disconnect()
			self.InputChanged:Disconnect()
			self.InputChanged2:Disconnect()
			
			if self.Dragging then
				self.Dragging = false
				
				if self.DragEnded then
					self.DragEnded()
				end
			end
		end
		
		return DraggableObject
		
	end
	fake_module_scripts[script] = module_script
end


-- Scripts:

local function YGXBQL_fake_script() -- ImageLabel.LocalScript 
	local script = Instance.new('LocalScript', ImageLabel)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.Image = game.Players:GetUserThumbnailAsync(game.Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
end
coroutine.wrap(YGXBQL_fake_script)()
local function QTJBO_fake_script() -- Input.LocalScript 
	local script = Instance.new('LocalScript', Input)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.Parent.Go.MouseButton1Click:Connect(function()
		
		if script.Parent.ContentText == "Ta clé" then
			
			print("True") -- les actions à faire si c'est la bonne
	
		else
	
			print("False") -- les actions à faire si c'est la mauvaise
	
		end
		
	end)
end
coroutine.wrap(QTJBO_fake_script)()
local function DLVGZQI_fake_script() -- Nokey.LocalScript 
	local script = Instance.new('LocalScript', Nokey)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.MouseButton1Click:Connect(function()
		
		script.Parent.Parent.Input.Text = "Le discord où la clé est présente"
		
	end)
end
coroutine.wrap(DLVGZQI_fake_script)()
local function ZKIGLLN_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local DraggableObject = require(script.Parent.DraggableObject)
	local FrameDrag = DraggableObject.new(script.Parent)
	FrameDrag:Enable()
end
coroutine.wrap(ZKIGLLN_fake_script)()
local function TFOO_fake_script() -- Close.LocalScript 
	local script = Instance.new('LocalScript', Close)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.MouseButton1Click:Connect(function()
		
		script.Parent.Parent.Parent:Destroy()
		
	end)
end
coroutine.wrap(TFOO_fake_script)()
