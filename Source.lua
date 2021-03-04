--// fireproximityprompt(<ProximityPrompt> Object,?<Int> ClickAmount,?<Bool> ExcludeTime)

local function fireproximityprompt(Obj, Amount, Skip)
    assert(typeof(Obj) == "Instance" and Obj:IsA("ProximityPrompt"), "userdata<ProximityPrompt> expected")
    Amount = Amount or 1
    local PromptTime = Obj.HoldDuration
    if Skip then 
        Obj.HoldDuration = 0
    end
    for i = 1, Amount do 
        Obj:InputHoldBegin()
        if not Skip then 
            wait(Obj.HoldDuration)
        end
        Obj:InputHoldEnd()
    end
    Obj.HoldDuration = PromptTime
end
