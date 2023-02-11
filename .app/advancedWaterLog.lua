print("Beverage that you drank:")
local beverageConsumed = io.read()

print("Ounces consumed:")
local ouncesConsumed = io.read()

print("Total calories:")
local totalCaloriesConsumed = io.read()

print("Total sugar consumed:")
local totalSugarConsumed = io.read()

print("Total carbs consumed:")
local totalCarbsConsumed = io.read()

print("Rate the drink (1-5)")
local rateTheDrink = io.read()


local function validateInformationAndWriteToFile()

    print("Is the information below correct?")
    print("")

    print("Beverage: " .. beverageConsumed)
    print("Ounces: " .. ouncesConsumed .. "oz")
    print("Total Calories: " .. totalCaloriesConsumed .. "cal")
    print("Total sugar: " .. totalSugarConsumed)
    print("Total carbs: " .. totalCarbsConsumed)
    print("Rate the drink: " .. rateTheDrink)
    
    print("")
    print("Type 'yes' if the information above is correct.")

    local input = io.read()

    if input == "yes" then

        local function writeToFile()

            local file = io.open("advancedWaterLog.txt", "w")

            file:write("Beverage: " .. beverageConsumed .. "\n")
            file:write("Total Ounces: " .. ouncesConsumed .. "oz" .. "\n")
            file:write("Total calories: " .. totalCaloriesConsumed .. "cal" .. "\n")
            file:write("Total sugar: " .. totalSugarConsumed .. "\n")
            file:write("Total carbs: " .. totalCarbsConsumed .. "\n")
            file:write("Rate the drink: " .. rateTheDrink .. "\n")
            
            file:close()
        end
        writeToFile()
    end
end
validateInformationAndWriteToFile()
