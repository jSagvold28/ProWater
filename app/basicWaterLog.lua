print("Beverage that you drank:")
local beverageConsumed = io.read()

print("Ounces consumed:")
local ouncesConsumed = io.read()

print("Total Calories:")
local totalCaloriesConsumed = io.read()

local function validateInformationAndWriteToFile()

    print("Is the information below correct?")
    print("")

    print("Beverage: " .. beverageConsumed)
    print("Ounces: " .. ouncesConsumed .. "oz")
    print("Total Calories: " .. totalCaloriesConsumed .. "cal")
    
    print("")
    print("Type 'yes' if the information above is correct.")

    local input = io.read()

    if input == "yes" then

        local function writeToFile()

            local file = io.open("basicWaterLog", "w")

            file:write("Beverage: " .. beverageConsumed .. "\n")
            file:write("Total Ounces: " .. ouncesConsumed .. "oz" .. "\n")
            file:write("Total calories: " .. totalCaloriesConsumed .. "cal" .. "\n")
            
            file:close()
        end
        writeToFile()
    end
end
validateInformationAndWriteToFile()
