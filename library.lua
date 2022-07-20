local mouse = game.Players.LocalPlayer:GetMouse()
    function btnEffect(btn)
spawn(function()
        if btn:IsA("TextButton") or btn:IsA("ImageButton") then
        local mouseDown = false
        local mouseUp 
        
        btn.MouseButton1Down:connect(function()
            mouseDown = true
            mouseUp = btn.MouseButton1Up:connect(function()
                mouseDown = false
                mouseUp:Disconnect()
            end)
            btn.AutoButtonColor = false
            btn.ClipsDescendants = true
            
            local circle = Instance.new("ImageLabel",btn)
            circle.Size = UDim2.new(0,0,0,0)
            circle.ZIndex = 100
            circle.Image = "rbxassetid://1986366831"
            circle.ImageTransparency = 0.6
            circle.Position = UDim2.new(0, mouse.X - 0, 0, mouse.Y) - UDim2.new(0,btn.AbsolutePosition.X, 0, btn.AbsolutePosition.Y)
            circle.BackgroundTransparency = 1
            local endSize = {Size = UDim2.new(0, 500, 0, 500), Position = circle.Position - UDim2.new(0, 250, 0, 250)}
            local fade = {ImageTransparency = 1}
            local endTime = false
            game:GetService("TweenService"):Create(circle,TweenInfo.new(2,Enum.EasingStyle.Sine, Enum.EasingDirection.Out),endSize):Play()
            spawn(function()
                wait(2)
                endTime = true
            end)
            repeat wait() until endTime or not mouseDown
            mouseUp:Disconnect()
            game:GetService("TweenService"):Create(circle,TweenInfo.new(1,Enum.EasingStyle.Sine, Enum.EasingDirection.Out),fade):Play()
            repeat wait() until circle.ImageTransparency == 1
            circle:Destroy()
        end)
    end    
end)
end
    local lib = {}

    function lib:CreateUI()
        local GayASFUI = Instance.new("ScreenGui")
        local TopFrame = Instance.new("ImageLabel")
        local MainFrame = Instance.new("ImageLabel")
        local Title = Instance.new("TextLabel")
        local ItemFrame = Instance.new("ScrollingFrame")
        local UIListLayout = Instance.new("UIListLayout")
        local UIPadding = Instance.new("UIPadding")
        
        GayASFUI.Name = "GayASFUI"
        GayASFUI.Parent = game.CoreGui
        
        TopFrame.Name = "TopFrame"
        TopFrame.Parent = GayASFUI
        TopFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        TopFrame.BackgroundTransparency = 1.000
        TopFrame.Position = UDim2.new(0.363636374, 0, 0.226851851, 0)
        TopFrame.Size = UDim2.new(0, 350, 0, 16)
        TopFrame.ZIndex = 2
        TopFrame.Image = "rbxassetid://3570695787"
        TopFrame.ImageColor3 = Color3.fromRGB(15, 15, 15)
        TopFrame.ScaleType = Enum.ScaleType.Slice
        TopFrame.SliceCenter = Rect.new(100, 100, 100, 100)
        TopFrame.SliceScale = 0.040
        TopFrame.Active = true
        TopFrame.Draggable = true

        MainFrame.Name = "MainFrame"
        MainFrame.Parent = TopFrame
        MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MainFrame.BackgroundTransparency = 1.000
        MainFrame.Size = UDim2.new(0, 350, 0, 370)
        MainFrame.Image = "rbxassetid://3570695787"
        MainFrame.ImageColor3 = Color3.fromRGB(39, 39, 39)
        MainFrame.ScaleType = Enum.ScaleType.Slice
        MainFrame.SliceCenter = Rect.new(100, 100, 100, 100)
        MainFrame.SliceScale = 0.040
        
        Title.Name = "Title"
        Title.Parent = MainFrame
        Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title.BackgroundTransparency = 1.000
        Title.Position = UDim2.new(0.0142857144, 0, 0.0081081083, 0)
        Title.Size = UDim2.new(0, 66, 0, 10)
        Title.ZIndex = 3
        Title.Font = Enum.Font.SourceSansBold
        Title.Text = "Frenchware 2.0"
        Title.TextColor3 = Color3.fromRGB(255, 119, 0)
        Title.TextSize = 14.000
        Title.TextXAlignment = Enum.TextXAlignment.Left
        
        ItemFrame.Name = "ItemFrame"
        ItemFrame.Parent = MainFrame
        ItemFrame.Active = true
        ItemFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ItemFrame.BackgroundTransparency = 1.000
        ItemFrame.Position = UDim2.new(0, 0, 0.0432432443, 0)
        ItemFrame.Size = UDim2.new(0, 350, 0, 354)
        ItemFrame.ScrollBarThickness = 0
        
        UIListLayout.Parent = ItemFrame
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 2)
        
        UIPadding.Parent = ItemFrame
        UIPadding.PaddingTop = UDim.new(0, 2)
    
        local gayShit = {}
    
        function gayShit:Toggle(text, callback)
            local toggled = false;
            local ToggleFrame = Instance.new("Frame")
            local ToggleButton = Instance.new("TextButton")
            local ToggleRoudningShit = Instance.new("ImageLabel")
            local ToggleText = Instance.new("TextLabel")
            
            ToggleFrame.Name = "ToggleFrame"
            ToggleFrame.Parent = ItemFrame
            ToggleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleFrame.BackgroundTransparency = 1.000
            ToggleFrame.Position = UDim2.new(0.357142866, 0, 0.158192083, 0)
            ToggleFrame.Size = UDim2.new(0, 340, 0, 25)
            btnEffect(ToggleButton)
            ToggleButton.Name = "ToggleButton"
            ToggleButton.Parent = ToggleFrame
            ToggleButton.AnchorPoint = Vector2.new(0.5, 0.5)
            ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleButton.BackgroundTransparency = 1.000
            ToggleButton.BorderSizePixel = 0
            ToggleButton.Position = UDim2.new(0.0359999985, 0, 0.5, 0)
            ToggleButton.Size = UDim2.new(0, 25, 0, 25)
            ToggleButton.ZIndex = 2
            ToggleButton.Font = Enum.Font.SourceSansBold
            ToggleButton.Text = ""
            ToggleButton.TextColor3 = Color3.fromRGB(255, 119, 0)
        ToggleButton.TextSize = 14.000
        ToggleButton.MouseButton1Down:Connect(function()
            toggled = not toggled
            local newText = toggled and "X" or ""
            callback()
            ToggleButton.Text = newText
        end)
            
            ToggleRoudningShit.Name = "ToggleRoudningShit"
            ToggleRoudningShit.Parent = ToggleButton
            ToggleRoudningShit.Active = true
            ToggleRoudningShit.AnchorPoint = Vector2.new(0.5, 0.5)
            ToggleRoudningShit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleRoudningShit.BackgroundTransparency = 1.000
            ToggleRoudningShit.Position = UDim2.new(0.499999523, 0, 0.5, 0)
            ToggleRoudningShit.Selectable = true
            ToggleRoudningShit.Size = UDim2.new(1, 0, 1, 0)
            ToggleRoudningShit.Image = "rbxassetid://3570695787"
            ToggleRoudningShit.ImageColor3 = Color3.fromRGB(15, 15, 15)
            ToggleRoudningShit.ScaleType = Enum.ScaleType.Slice
            ToggleRoudningShit.SliceCenter = Rect.new(100, 100, 100, 100)
            ToggleRoudningShit.SliceScale = 0.040
            
            ToggleText.Name = "ToggleText"
            ToggleText.Parent = ToggleFrame
            ToggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleText.BackgroundTransparency = 1.000
            ToggleText.Position = UDim2.new(0.0907564014, 0, 0.288107902, 0)
            ToggleText.Size = UDim2.new(0, 309, 0, 10)
            ToggleText.ZIndex = 3
            ToggleText.Font = Enum.Font.SourceSansBold
            ToggleText.Text = text
            ToggleText.TextColor3 = Color3.fromRGB(255, 119, 0)
            ToggleText.TextSize = 14.000
            ToggleText.TextXAlignment = Enum.TextXAlignment.Left
        end
    
        function gayShit:Button(text, callback)
            local ButtonYes = Instance.new("TextButton")
            local RoundingShit = Instance.new("ImageLabel")
            
            ButtonYes.Name = "ButtonYes"
            ButtonYes.Parent = ItemFrame
            ButtonYes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ButtonYes.BackgroundTransparency = 1.000
            ButtonYes.BorderSizePixel = 0
            ButtonYes.Position = UDim2.new(-0.371428579, 0, 0.113757826, 0)
            ButtonYes.Size = UDim2.new(0, 340, 0, 25)
            ButtonYes.ZIndex = 2
            ButtonYes.Font = Enum.Font.SourceSansBold
            ButtonYes.Text = text
            ButtonYes.TextColor3 = Color3.fromRGB(255, 119, 0)
            ButtonYes.TextSize = 14.000
            ButtonYes.MouseButton1Down:Connect(callback)
            btnEffect(ButtonYes)
            
            RoundingShit.Name = "RoundingShit"
            RoundingShit.Parent = ButtonYes
            RoundingShit.Active = true
            RoundingShit.AnchorPoint = Vector2.new(0.5, 0.5)
            RoundingShit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            RoundingShit.BackgroundTransparency = 1.000
            RoundingShit.Position = UDim2.new(0.5, 0, 0.5, 0)
            RoundingShit.Selectable = true
            RoundingShit.Size = UDim2.new(1, 0, 1, 0)
            RoundingShit.Image = "rbxassetid://3570695787"
            RoundingShit.ImageColor3 = Color3.fromRGB(15, 15, 15)
            RoundingShit.ScaleType = Enum.ScaleType.Slice
            RoundingShit.SliceCenter = Rect.new(100, 100, 100, 100)
            RoundingShit.SliceScale = 0.040
        end
    
        function gayShit:Text(text)
            local LabelFrame = Instance.new("Frame")
            local LabelText = Instance.new("TextLabel")
            
            LabelFrame.Name = "LabelFrame"
            LabelFrame.Parent = ItemFrame
            LabelFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelFrame.BackgroundTransparency = 1.000
            LabelFrame.Position = UDim2.new(0.357142866, 0, 0.158192083, 0)
            LabelFrame.Size = UDim2.new(0, 340, 0, 25)
            
            LabelText.Name = "LabelText"
            LabelText.Parent = LabelFrame
            LabelText.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelText.BackgroundTransparency = 1.000
            LabelText.Position = UDim2.new(0.5, 0, 0.5, 0)
            LabelText.Size = UDim2.new(0, 309, 0, 10)
            LabelText.ZIndex = 3
            LabelText.Font = Enum.Font.SourceSansBold
            LabelText.Text = text
            LabelText.TextColor3 = Color3.fromRGB(255, 119, 0)
            LabelText.TextSize = 14.000
        end
    
    
        return gayShit	
    
    
    end

return lib
