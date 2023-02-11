local function getInput()

    print("")

    print("Water goal (ounces)")
    local waterGoal = io.read()

    print("Active move minuites (per day)")
    local activeMoveMinuitesPerDay = io.read()

    print("Calories burnt (per day)")
    local caloriesBurntPerDay = io.read()
    
end
getInput()

        print("")
        print("Water goal (ounces)")
        local waterGoal = io.read()
        print("Active move minutes (per day)")
        local activeMoveMinutesPerDay = io.read()
        print("Calories burnt (per day)")
        local caloriesBurntPerDay = io.read()

    
    local function writeDataToFile()
        local file = io.open("goal.txt", "w")
        file:write("Water goal: " .. waterGoal .. "\n")
        file:write("Active move minutes: " .. activeMoveMinutesPerDay .."\n")
        file:write("Calories burned: " .. caloriesBurntPerDay .. "\n")
        file:close()
    end
    writeDataToFile()
    
    file:write("Water goal: " .. waterGoal .. "\n")
    file:write("Active move mins: " .. activeMoveMinuitesPerDay .."\n")
    file:write("Calories burn:" .. caloriesBurntPerDay .. "\n")

    file:close()
