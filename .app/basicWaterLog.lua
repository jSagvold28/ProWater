print("Beverage that you drank:")
local beverageConsumed = io.read()

print("Ounces consumed:")
local ouncesConsumed = io.read()

print("Total Calories:")
local totalCaloriesConsumed = io.read()

print("Rate the drink (1-5)")
local rateTheDrink = io.read()

local function validateInformationAndWriteToFile()

    print("Is the information below correct?")
    print("")

    print("Beverage: " .. beverageConsumed)
    print("Ounces: " .. ouncesConsumed .. "oz")
    print("Total Calories: " .. totalCaloriesConsumed .. "cal")
    print("Rate drink: " .. rateTheDrink)
    
    print("")
    print("Type 'yes' if the information above is correct.")

    local input = io.read()

    if input == "yes" then

        local function writeToFile()

            local file = io.open("basicWaterLog.txt", "w")

            io.write("Beverage: " .. beverageConsumed .. "\n")
            io.write("Ounces: " .. ouncesConsumed .. "oz" .. "\n")
            io.write("Total Calories: " .. totalCaloriesConsumed .. "cal" .. "\n")
            io.write("Rate drink: " .. rateTheDrink .. "\n")
            
            file:close()
        end
        writeToFile()
    end
end
validateInformationAndWriteToFile()
