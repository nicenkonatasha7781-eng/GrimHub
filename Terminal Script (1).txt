local lI1lI = string.char
local O00O0 = bit32.bxor
local Il1Il = table.concat
local l1IlI = table.insert
local O0000 = table.clear

local function I1l1I(O0O0)
    local l11l = {}
    for Il11 = 1, #O0O0 do
        l11l[Il11] = lI1lI(O00O0(O0O0[Il11], 0x5A))
    end
    return Il1Il(l11l)
end

local O00O = {
    [1] = I1l1I({29,63,46,9,63,40,44,51,57,63}),
    [2] = I1l1I({10,54,59,35,63,40,41}),
    [3] = I1l1I({15,41,63,40,19,52,42,47,46,9,63,40,44,51,57,63}),
    [4] = I1l1I({14,45,63,63,52,9,63,40,44,51,57,63}),
    [5] = I1l1I({8,63,42,54,51,57,59,46,63,62,9,46,53,40,59,61,63}),
    [6] = I1l1I({22,53,57,59,54,10,54,59,35,63,40}),
    [7] = I1l1I({13,59,51,46,28,53,40,25,50,51,54,62}),
    [8] = I1l1I({10,54,59,35,63,40,29,47,51}),
    [9] = I1l1I({9,57,40,63,63,52,29,47,51}),
    [10] = I1l1I({23,53,62,63,40,52,10,59,52,63,54,29,47,51,5,22,51,61,50,46}),
    [11] = I1l1I({28,40,59,55,63}),
    [12] = I1l1I({23,59,51,52,28,40,59,55,63}),
    [13] = I1l1I({15,19,25,53,40,52,63,40}),
    [14] = I1l1I({15,19,9,46,40,53,49,63}),
    [15] = I1l1I({15,19,29,40,59,62,51,63,52,46}),
    [16] = I1l1I({18,63,59,62,63,40}),
    [17] = I1l1I({30,51,44,51,62,63,40}),
    [18] = I1l1I({14,63,34,46,22,59,56,63,54}),
    [19] = I1l1I({14,63,40,55,51,52,59,54}),
    [20] = I1l1I({8,119,9,18,19,28,14}),
    [21] = I1l1I({25,53,52,46,63,52,46,27,40,63,59}),
    [22] = I1l1I({14,8,27,20,9,28,21,8,23,27,14,19,21,20,9}),
    [23] = I1l1I({14,63,34,46,24,47,46,46,53,52}),
    [24] = I1l1I({25,54,59,41,41,51,57,28,53,34,25,59,40,62}),
    [25] = I1l1I({19,55,59,61,63,22,59,56,63,54}),
    [26] = I1l1I({40,56,34,59,41,41,63,46,51,62,96,117,117,109,110,99,106,106,107,105,106,98,104}),
    [27] = I1l1I({25,54,59,41,41,51,57,122,28,53,34,122,28,53,40,55}),
    [28] = I1l1I({9,57,59,40,59,56,63,54,54,59,25,59,40,62}),
    [29] = I1l1I({9,57,59,40,59,56,63,54,54,59}),
    [30] = I1l1I({25,54,59,41,41,51,57,30,53,61,25,59,40,62}),
    [31] = I1l1I({25,54,59,41,41,51,57,122,30,53,61}),
    [32] = I1l1I({28,54,53,59,46,51,52,61,19,57,53,52}),
    [33] = I1l1I({25,53,40,63}),
    [34] = I1l1I({8,63,55,53,46,63,41}),
    [35] = I1l1I({9,35,41,46,63,55}),
    [36] = I1l1I({29,51,44,63,16,63,45,63,54}),
    [37] = I1l1I({28,53,34}),
    [38] = I1l1I({20,53,52,63}),
    [39] = I1l1I({25,50,59,40,59,57,46,63,40}),
    [40] = I1l1I({27,56,51,46,51,46,51,63,41}),
    [41] = I1l1I({14,40,59,52,41,60,53,40,55}),
    [42] = I1l1I({25,54,59,41,41,51,57}),
    [43] = I1l1I({22,59,62,35,56,47,61}),
    [44] = I1l1I({30,53,61}),
    [45] = I1l1I({8,63,51,55,59,61,51,52,63,62}),
    [46] = I1l1I({19,52,44,53,49,63,9,63,40,44,63,40}),
    [47] = I1l1I({28,51,40,63,9,63,40,44,63,40}),
    [48] = I1l1I({25,40,63,59,46,63}),
    [49] = I1l1I({10,54,59,35}),
    [50] = I1l1I({25,53,55,42,54,63,46,63,62}),
    [51] = I1l1I({13,59,51,46}),
    [52] = I1l1I({30,51,41,57,53,52,52,63,57,46}),
    [53] = I1l1I({30,63,41,46,40,53,35}),
    [54] = I1l1I({29,63,46,23,53,47,41,63,22,53,57,59,46,51,53,52})
}

local l1l1, O000, IlIl, lIIl, O0OO, I11I, l1I1, OO00
local Il1I, lI1I, O0O1, I1Il, l1lI, O00I, IlII, lIII
local O0OI, I11l, l1II, OO0I, Il1l, lI1l, O0Ol, I1I1
local l1ll, O00l, IlI1, lII1, O0O2, I111, l1I2, OO01
local Il12, lI12, O0O3, I1I2, l1l2, O002, IlI2, lII2
local O0O4, I112, l1I3, OO02, Il13, lI13, O0O5, I1I3
local l1l3, O003, IlI3, lII3, O0O6, I113, l1I4, OO03

local _S = 0x101
while _S ~= 0x0 do
    if _S == 0x101 then
        l1l1 = game:GetService(O00O[2])
        O000 = game:GetService(O00O[3])
        IlIl = game:GetService(O00O[4])
        lIIl = game:GetService(O00O[5])
        _S = 0x204
    elseif _S == 0x204 then
        O0OO = l1l1.LocalPlayer
        I11I = O0OO:WaitForChild(O00O[8])
        l1I1 = Enum.KeyCode.RightShift
        OO00 = Enum.KeyCode.KeypadThree
        Il1I = {}
        _S = 0x308
    elseif _S == 0x308 then
        lI1I = Instance.new(O00O[9])
        lI1I.Name = O00O[10]
        lI1I.ResetOnSpawn = false
        lI1I.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        lI1I.Parent = I11I

        O0O1 = Instance.new(O00O[11])
        O0O1.Name = O00O[12]
        O0O1.Size = UDim2.new(0, 340, 0, 300)
        O0O1.Position = UDim2.new(0.5, -170, 0.5, -150)
        O0O1.BackgroundColor3 = Color3.fromRGB(245, 247, 250)
        O0O1.BorderSizePixel = 0
        O0O1.ClipsDescendants = true
        O0O1.Active = true
        O0O1.Parent = lI1I
        _S = 0x412
    elseif _S == 0x412 then
        I1Il = Instance.new(O00O[13])
        I1Il.CornerRadius = UDim.new(0, 10)
        I1Il.Parent = O0O1

        l1lI = Instance.new(O00O[14])
        l1lI.Color = Color3.fromRGB(220, 225, 235)
        l1lI.Thickness = 1.2
        l1lI.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        l1lI.Parent = O0O1

        O00I = Instance.new(O00O[15])
        O00I.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(240, 242, 248))
        })
        O00I.Rotation = 45
        O00I.Parent = O0O1
        _S = 0x518
    elseif _S == 0x518 then
        IlII = Instance.new(O00O[11])
        IlII.Name = O00O[16]
        IlII.Size = UDim2.new(1, 0, 0, 42)
        IlII.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        IlII.BackgroundTransparency = 0.3
        IlII.BorderSizePixel = 0
        IlII.Active = true
        IlII.Parent = O0O1

        lIII = Instance.new(O00O[11])
        lIII.Name = O00O[17]
        lIII.Size = UDim2.new(1, 0, 0, 1)
        lIII.Position = UDim2.new(0, 0, 1, -1)
        lIII.BackgroundColor3 = Color3.fromRGB(225, 230, 240)
        lIII.BorderSizePixel = 0
        lIII.Parent = IlII

        O0OI = Instance.new(O00O[11])
        O0OI.Size = UDim2.new(0, 3, 0, 16)
        O0OI.Position = UDim2.new(0, 14, 0.5, -8)
        O0OI.BackgroundColor3 = Color3.fromRGB(99, 102, 241)
        O0OI.BorderSizePixel = 0
        O0OI.Parent = IlII

        I11l = Instance.new(O00O[13])
        I11l.CornerRadius = UDim.new(1, 0)
        I11l.Parent = O0OI
        _S = 0x622
    elseif _S == 0x622 then
        l1II = Instance.new(O00O[18])
        l1II.Size = UDim2.new(0.6, 0, 1, 0)
        l1II.Position = UDim2.new(0, 26, 0, 0)
        l1II.BackgroundTransparency = 1
        l1II.Font = Enum.Font.GothamBold
        l1II.Text = O00O[19]
        l1II.TextColor3 = Color3.fromRGB(30, 32, 40)
        l1II.TextSize = 14
        l1II.TextXAlignment = Enum.TextXAlignment.Left
        l1II.Active = false
        l1II.Parent = IlII

        OO0I = Instance.new(O00O[18])
        OO0I.Size = UDim2.new(0, 62, 0, 22)
        OO0I.Position = UDim2.new(1, -76, 0.5, -11)
        OO0I.BackgroundColor3 = Color3.fromRGB(235, 240, 248)
        OO0I.Font = Enum.Font.GothamMedium
        OO0I.Text = O00O[20]
        OO0I.TextColor3 = Color3.fromRGB(100, 110, 130)
        OO0I.TextSize = 10
        OO0I.Active = false
        OO0I.Parent = IlII

        Il1l = Instance.new(O00O[13])
        Il1l.CornerRadius = UDim.new(0, 5)
        Il1l.Parent = OO0I

        lI1l = Instance.new(O00O[14])
        lI1l.Color = Color3.fromRGB(215, 225, 240)
        lI1l.Thickness = 1
        lI1l.Parent = OO0I
        _S = 0x730
    elseif _S == 0x730 then
        O0Ol = Instance.new(O00O[11])
        O0Ol.Name = O00O[21]
        O0Ol.Size = UDim2.new(1, -28, 1, -56)
        O0Ol.Position = UDim2.new(0, 14, 0, 50)
        O0Ol.BackgroundTransparency = 1
        O0Ol.Parent = O0O1

        I1I1 = Instance.new(O00O[18])
        I1I1.Size = UDim2.new(1, 0, 0, 18)
        I1I1.Position = UDim2.new(0, 2, 0, 0)
        I1I1.BackgroundTransparency = 1
        I1I1.Font = Enum.Font.GothamSemibold
        I1I1.Text = O00O[22]
        I1I1.TextColor3 = Color3.fromRGB(130, 140, 160)
        I1I1.TextSize = 11
        I1I1.TextXAlignment = Enum.TextXAlignment.Left
        I1I1.Parent = O0Ol
        _S = 0x840
    elseif _S == 0x840 then
        l1ll = Instance.new(O00O[23])
        l1ll.Name = O00O[24]
        l1ll.Size = UDim2.new(1, 0, 0, 46)
        l1ll.Position = UDim2.new(0, 0, 0, 24)
        l1ll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        l1ll.AutoButtonColor = false
        l1ll.Text = ""
        l1ll.Parent = O0Ol

        O00l = Instance.new(O00O[13])
        O00l.CornerRadius = UDim.new(0, 8)
        O00l.Parent = l1ll

        IlI1 = Instance.new(O00O[14])
        IlI1.Color = Color3.fromRGB(225, 230, 240)
        IlI1.Thickness = 1
        IlI1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        IlI1.Parent = l1ll

        lII1 = Instance.new(O00O[25])
        lII1.Size = UDim2.new(0, 22, 0, 22)
        lII1.Position = UDim2.new(0, 12, 0.5, -11)
        lII1.BackgroundTransparency = 1
        lII1.Image = O00O[26]
        lII1.ImageColor3 = Color3.fromRGB(99, 102, 241)
        lII1.Parent = l1ll

        O0O2 = Instance.new(O00O[18])
        O0O2.Size = UDim2.new(1, -120, 1, 0)
        O0O2.Position = UDim2.new(0, 44, 0, 0)
        O0O2.BackgroundTransparency = 1
        O0O2.Font = Enum.Font.GothamSemibold
        O0O2.Text = O00O[27]
        O0O2.TextColor3 = Color3.fromRGB(30, 32, 40)
        O0O2.TextSize = 13
        O0O2.TextXAlignment = Enum.TextXAlignment.Left
        O0O2.Parent = l1ll

        I111 = Instance.new(O00O[11])
        I111.Size = UDim2.new(0, 40, 0, 22)
        I111.Position = UDim2.new(1, -54, 0.5, -11)
        I111.BackgroundColor3 = Color3.fromRGB(215, 220, 230)
        I111.BorderSizePixel = 0
        I111.Parent = l1ll

        l1I2 = Instance.new(O00O[13])
        l1I2.CornerRadius = UDim.new(1, 0)
        l1I2.Parent = I111

        OO01 = Instance.new(O00O[14])
        OO01.Color = Color3.fromRGB(195, 205, 220)
        OO01.Thickness = 1
        OO01.Parent = I111

        Il12 = Instance.new(O00O[11])
        Il12.Size = UDim2.new(0, 16, 0, 16)
        Il12.Position = UDim2.new(0, 3, 0.5, -8)
        Il12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Il12.BorderSizePixel = 0
        Il12.Parent = I111

        lI12 = Instance.new(O00O[13])
        lI12.CornerRadius = UDim.new(1, 0)
        lI12.Parent = Il12
        _S = 0x950
    elseif _S == 0x950 then
        O0O3 = Instance.new(O00O[23])
        O0O3.Name = O00O[28]
        O0O3.Size = UDim2.new(1, 0, 0, 46)
        O0O3.Position = UDim2.new(0, 0, 0, 76)
        O0O3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        O0O3.AutoButtonColor = false
        O0O3.Text = ""
        O0O3.Parent = O0Ol

        I1I2 = Instance.new(O00O[13])
        I1I2.CornerRadius = UDim.new(0, 8)
        I1I2.Parent = O0O3

        l1l2 = Instance.new(O00O[14])
        l1l2.Color = Color3.fromRGB(225, 230, 240)
        l1l2.Thickness = 1
        l1l2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        l1l2.Parent = O0O3

        O002 = Instance.new(O00O[25])
        O002.Size = UDim2.new(0, 22, 0, 22)
        O002.Position = UDim2.new(0, 12, 0.5, -11)
        O002.BackgroundTransparency = 1
        O002.Image = O00O[26]
        O002.ImageColor3 = Color3.fromRGB(230, 120, 30)
        O002.Parent = O0O3

        IlI2 = Instance.new(O00O[18])
        IlI2.Size = UDim2.new(1, -120, 1, 0)
        IlI2.Position = UDim2.new(0, 44, 0, 0)
        IlI2.BackgroundTransparency = 1
        IlI2.Font = Enum.Font.GothamSemibold
        IlI2.Text = O00O[29]
        IlI2.TextColor3 = Color3.fromRGB(30, 32, 40)
        IlI2.TextSize = 13
        IlI2.TextXAlignment = Enum.TextXAlignment.Left
        IlI2.Parent = O0O3

        lII2 = Instance.new(O00O[11])
        lII2.Size = UDim2.new(0, 40, 0, 22)
        lII2.Position = UDim2.new(1, -54, 0.5, -11)
        lII2.BackgroundColor3 = Color3.fromRGB(215, 220, 230)
        lII2.BorderSizePixel = 0
        lII2.Parent = O0O3

        O0O4 = Instance.new(O00O[13])
        O0O4.CornerRadius = UDim.new(1, 0)
        O0O4.Parent = lII2

        I112 = Instance.new(O00O[14])
        I112.Color = Color3.fromRGB(195, 205, 220)
        I112.Thickness = 1
        I112.Parent = lII2

        l1I3 = Instance.new(O00O[11])
        l1I3.Size = UDim2.new(0, 16, 0, 16)
        l1I3.Position = UDim2.new(0, 3, 0.5, -8)
        l1I3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        l1I3.BorderSizePixel = 0
        l1I3.Parent = lII2

        OO02 = Instance.new(O00O[13])
        OO02.CornerRadius = UDim.new(1, 0)
        OO02.Parent = l1I3
        _S = 0xA60
    elseif _S == 0xA60 then
        Il13 = Instance.new(O00O[23])
        Il13.Name = O00O[30]
        Il13.Size = UDim2.new(1, 0, 0, 46)
        Il13.Position = UDim2.new(0, 0, 0, 128)
        Il13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Il13.AutoButtonColor = false
        Il13.Text = ""
        Il13.Parent = O0Ol

        lI13 = Instance.new(O00O[13])
        lI13.CornerRadius = UDim.new(0, 8)
        lI13.Parent = Il13

        O0O5 = Instance.new(O00O[14])
        O0O5.Color = Color3.fromRGB(225, 230, 240)
        O0O5.Thickness = 1
        O0O5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        O0O5.Parent = Il13

        I1I3 = Instance.new(O00O[25])
        I1I3.Size = UDim2.new(0, 22, 0, 22)
        I1I3.Position = UDim2.new(0, 12, 0.5, -11)
        I1I3.BackgroundTransparency = 1
        I1I3.Image = O00O[26]
        I1I3.ImageColor3 = Color3.fromRGB(50, 150, 230)
        I1I3.Parent = Il13

        l1l3 = Instance.new(O00O[18])
        l1l3.Size = UDim2.new(1, -120, 1, 0)
        l1l3.Position = UDim2.new(0, 44, 0, 0)
        l1l3.BackgroundTransparency = 1
        l1l3.Font = Enum.Font.GothamSemibold
        l1l3.Text = O00O[31]
        l1l3.TextColor3 = Color3.fromRGB(30, 32, 40)
        l1l3.TextSize = 13
        l1l3.TextXAlignment = Enum.TextXAlignment.Left
        l1l3.Parent = Il13

        O003 = Instance.new(O00O[11])
        O003.Size = UDim2.new(0, 40, 0, 22)
        O003.Position = UDim2.new(1, -54, 0.5, -11)
        O003.BackgroundColor3 = Color3.fromRGB(215, 220, 230)
        O003.BorderSizePixel = 0
        O003.Parent = Il13

        IlI3 = Instance.new(O00O[13])
        IlI3.CornerRadius = UDim.new(1, 0)
        IlI3.Parent = O003

        lII3 = Instance.new(O00O[14])
        lII3.Color = Color3.fromRGB(195, 205, 220)
        lII3.Thickness = 1
        lII3.Parent = O003

        O0O6 = Instance.new(O00O[11])
        O0O6.Size = UDim2.new(0, 16, 0, 16)
        O0O6.Position = UDim2.new(0, 3, 0.5, -8)
        O0O6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        O0O6.BorderSizePixel = 0
        O0O6.Parent = O003

        I113 = Instance.new(O00O[13])
        I113.CornerRadius = UDim.new(1, 0)
        I113.Parent = O0O6
        _S = 0xB70
    elseif _S == 0xB70 then
        l1I4 = Instance.new(O00O[23])
        l1I4.Name = O00O[32]
        l1I4.Size = UDim2.new(0, 44, 0, 44)
        l1I4.Position = O0O1.Position
        l1I4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        l1I4.AutoButtonColor = false
        l1I4.Font = Enum.Font.GothamBold
        l1I4.Text = ""
        l1I4.TextColor3 = Color3.fromRGB(99, 102, 241)
        l1I4.TextSize = 14
        l1I4.Visible = false
        l1I4.Active = true
        l1I4.Parent = lI1I

        local _c1 = Instance.new(O00O[13])
        _c1.CornerRadius = UDim.new(0, 10)
        _c1.Parent = l1I4

        OO03 = Instance.new(O00O[14])
        OO03.Color = Color3.fromRGB(220, 225, 235)
        OO03.Thickness = 1.2
        OO03.Parent = l1I4

        local _img1 = Instance.new(O00O[25])
        _img1.Size = UDim2.new(0, 22, 0, 22)
        _img1.Position = UDim2.new(0.5, -11, 0.5, -11)
        _img1.BackgroundTransparency = 1
        _img1.Image = O00O[26]
        _img1.ImageColor3 = Color3.fromRGB(99, 102, 241)
        _img1.Active = false
        _img1.Parent = l1I4
        _S = 0xC80
    elseif _S == 0xC80 then
        local function _tw(_o, _t, _p)
            IlIl:Create(_o, TweenInfo.new(_t), _p):Play()
        end

        l1ll.MouseEnter:Connect(function()
            _tw(l1ll, 0.18, {BackgroundColor3 = Color3.fromRGB(248, 250, 255)})
            _tw(IlI1, 0.18, {Color = Color3.fromRGB(190, 200, 225)})
            _tw(lII1, 0.18, {ImageColor3 = Color3.fromRGB(129, 132, 255)})
        end)
        l1ll.MouseLeave:Connect(function()
            _tw(l1ll, 0.18, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
            _tw(IlI1, 0.18, {Color = Color3.fromRGB(225, 230, 240)})
            _tw(lII1, 0.18, {ImageColor3 = Color3.fromRGB(99, 102, 241)})
        end)

        O0O3.MouseEnter:Connect(function()
            _tw(O0O3, 0.18, {BackgroundColor3 = Color3.fromRGB(248, 250, 255)})
            _tw(l1l2, 0.18, {Color = Color3.fromRGB(190, 200, 225)})
            _tw(O002, 0.18, {ImageColor3 = Color3.fromRGB(250, 140, 50)})
        end)
        O0O3.MouseLeave:Connect(function()
            _tw(O0O3, 0.18, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
            _tw(l1l2, 0.18, {Color = Color3.fromRGB(225, 230, 240)})
            _tw(O002, 0.18, {ImageColor3 = Color3.fromRGB(230, 120, 30)})
        end)

        Il13.MouseEnter:Connect(function()
            _tw(Il13, 0.18, {BackgroundColor3 = Color3.fromRGB(248, 250, 255)})
            _tw(O0O5, 0.18, {Color = Color3.fromRGB(190, 200, 225)})
            _tw(I1I3, 0.18, {ImageColor3 = Color3.fromRGB(70, 170, 250)})
        end)
        Il13.MouseLeave:Connect(function()
            _tw(Il13, 0.18, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
            _tw(O0O5, 0.18, {Color = Color3.fromRGB(225, 230, 240)})
            _tw(I1I3, 0.18, {ImageColor3 = Color3.fromRGB(50, 150, 230)})
        end)

        l1I4.MouseEnter:Connect(function()
            _tw(l1I4, 0.15, {BackgroundColor3 = Color3.fromRGB(248, 250, 255)})
        end)
        l1I4.MouseLeave:Connect(function()
            _tw(l1I4, 0.15, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
        end)
        _S = 0xD90
    elseif _S == 0xD90 then
        local _fA = false
        l1ll.MouseButton1Click:Connect(function()
            _fA = not _fA
            local _ti = TweenInfo.new(0.22, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
            if _fA then
                IlIl:Create(I111, _ti, {BackgroundColor3 = Color3.fromRGB(99, 102, 241)}):Play()
                IlIl:Create(OO01, _ti, {Color = Color3.fromRGB(129, 132, 255)}):Play()
                IlIl:Create(Il12, _ti, {Position = UDim2.new(1, -19, 0.5, -8), BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
            else
                IlIl:Create(I111, _ti, {BackgroundColor3 = Color3.fromRGB(215, 220, 230)}):Play()
                IlIl:Create(OO01, _ti, {Color = Color3.fromRGB(195, 205, 220)}):Play()
                IlIl:Create(Il12, _ti, {Position = UDim2.new(0, 3, 0.5, -8), BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
            end
            task.spawn(function()
                if _fA then
                    pcall(function()
                        lIIl.Core.Remotes.System.GiveJewel:InvokeServer("Fox", "None", "None", "None", "None", O0OO.Character)
                    end)
                    task.wait(0.1)
                    pcall(function()
                        lIIl.Core.Remotes.Abilities.Transform:FireServer("Fox", "None", "Classic", "None")
                    end)
                else
                    pcall(function()
                        lIIl.Core.Remotes.Abilities.Transform:FireServer("Fox", "None", "Classic", "None")
                    end)
                end
            end)
        end)

        local _sA = false
        O0O3.MouseButton1Click:Connect(function()
            _sA = not _sA
            local _ti = TweenInfo.new(0.22, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
            if _sA then
                IlIl:Create(lII2, _ti, {BackgroundColor3 = Color3.fromRGB(230, 120, 30)}):Play()
                IlIl:Create(I112, _ti, {Color = Color3.fromRGB(250, 140, 50)}):Play()
                IlIl:Create(l1I3, _ti, {Position = UDim2.new(1, -19, 0.5, -8), BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
            else
                IlIl:Create(lII2, _ti, {BackgroundColor3 = Color3.fromRGB(215, 220, 230)}):Play()
                IlIl:Create(I112, _ti, {Color = Color3.fromRGB(195, 205, 220)}):Play()
                IlIl:Create(l1I3, _ti, {Position = UDim2.new(0, 3, 0.5, -8), BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
            end
            task.spawn(function()
                if _sA then
                    pcall(function()
                        lIIl.Core.Remotes.System.GiveJewel:InvokeServer("Ladybug", "None", "None", "None", "None", O0OO.Character)
                    end)
                    task.wait(0.1)
                    pcall(function()
                        lIIl.Core.Remotes.Abilities.Transform:FireServer("Ladybug", "None", "Scarabella", "None", true)
                    end)
                else
                    pcall(function()
                        lIIl.Core.Remotes.Abilities.Transform:FireServer("Ladybug", "None", "Scarabella", "None")
                    end)
                end
            end)
        end)

        local _dA = false
        Il13.MouseButton1Click:Connect(function()
            _dA = not _dA
            local _ti = TweenInfo.new(0.22, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
            if _dA then
                IlIl:Create(O003, _ti, {BackgroundColor3 = Color3.fromRGB(50, 150, 230)}):Play()
                IlIl:Create(lII3, _ti, {Color = Color3.fromRGB(70, 170, 250)}):Play()
                IlIl:Create(O0O6, _ti, {Position = UDim2.new(1, -19, 0.5, -8), BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
            else
                IlIl:Create(O003, _ti, {BackgroundColor3 = Color3.fromRGB(215, 220, 230)}):Play()
                IlIl:Create(lII3, _ti, {Color = Color3.fromRGB(195, 205, 220)}):Play()
                IlIl:Create(O0O6, _ti, {Position = UDim2.new(0, 3, 0.5, -8), BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
            end
            task.spawn(function()
                if _dA then
                    pcall(function()
                        lIIl.Core.Remotes.System.GiveJewel:InvokeServer("Dog", "None", "Reimagined", "None", "None", O0OO.Character)
                    end)
                    task.wait(0.1)
                    pcall(function()
                        lIIl.Core.Remotes.Abilities.Transform:FireServer("Dog", "None", "Classic", "None")
                    end)
                else
                    pcall(function()
                        lIIl.Core.Remotes.Abilities.Transform:FireServer("Dog", "None", "Classic", "None")
                    end)
                end
            end)
        end)
        _S = 0xEA0
    elseif _S == 0xEA0 then
        local function _dG(_h, _t)
            local _d = false
            local _o = Vector2.zero
            l1IlI(Il1I, _h.InputBegan:Connect(function(_i)
                if _i.UserInputType == Enum.UserInputType.MouseButton1 or _i.UserInputType == Enum.UserInputType.Touch then
                    _d = true
                    local _m = O000:GetMouseLocation()
                    _o = Vector2.new(_m.X - _t.AbsolutePosition.X, _m.Y - _t.AbsolutePosition.Y)
                end
            end))
            l1IlI(Il1I, O000.InputEnded:Connect(function(_i)
                if _i.UserInputType == Enum.UserInputType.MouseButton1 or _i.UserInputType == Enum.UserInputType.Touch then
                    _d = false
                end
            end))
            l1IlI(Il1I, O000.InputChanged:Connect(function(_i)
                if _d and (_i.UserInputType == Enum.UserInputType.MouseMovement or _i.UserInputType == Enum.UserInputType.Touch) then
                    local _m = O000:GetMouseLocation()
                    _t.Position = UDim2.fromOffset(_m.X - _o.X, _m.Y - _o.Y)
                end
            end))
        end

        _dG(IlII, O0O1)
        _dG(l1I4, l1I4)

        local _v = true
        local _tw = false

        local function _tG()
            if _tw or not lI1I.Parent then return end
            _tw = true
            _v = not _v
            local _ti = TweenInfo.new(0.22, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
            if not _v then
                l1I4.Position = O0O1.Position
                l1I4.Visible = true
                l1I4.Size = UDim2.new(0, 0, 0, 0)
                l1I4.BackgroundTransparency = 1
                OO03.Transparency = 1

                IlIl:Create(O0O1, _ti, {Size = UDim2.new(0, 0, 0, 0), BackgroundTransparency = 1}):Play()
                IlIl:Create(l1lI, _ti, {Transparency = 1}):Play()
                local _3 = IlIl:Create(l1I4, _ti, {Size = UDim2.new(0, 44, 0, 44), BackgroundTransparency = 0})
                IlIl:Create(OO03, _ti, {Transparency = 0}):Play()

                _3:Play()
                _3.Completed:Wait()
                O0O1.Visible = false
            else
                O0O1.Position = l1I4.Position
                O0O1.Visible = true
                O0O1.Size = UDim2.new(0, 0, 0, 0)

                IlIl:Create(l1I4, _ti, {Size = UDim2.new(0, 0, 0, 0), BackgroundTransparency = 1}):Play()
                IlIl:Create(OO03, _ti, {Transparency = 1}):Play()
                local _3 = IlIl:Create(O0O1, _ti, {Size = UDim2.new(0, 340, 0, 300), BackgroundTransparency = 0})
                IlIl:Create(l1lI, _ti, {Transparency = 0}):Play()

                _3:Play()
                _3.Completed:Wait()
                l1I4.Visible = false
            end
            _tw = false
        end

        l1IlI(Il1I, l1I4.MouseButton1Click:Connect(_tG))

        local _uL = false
        local function _uF()
            if _uL then return end
            _uL = true
            for _, _c in ipairs(Il1I) do
                if _c.Connected then _c:Disconnect() end
            end
            O0000(Il1I)
            if lI1I then lI1I:Destroy() end
        end

        l1IlI(Il1I, O000.InputBegan:Connect(function(_i, _g)
            if _g then return end
            if _i.KeyCode == l1I1 then
                task.spawn(_tG)
            elseif _i.KeyCode == OO00 then
                _uF()
            end
        end))
        _S = 0x0
    end
end
