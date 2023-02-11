local function getUserInfo()

    print("Name:")
    local name = io.read()

    print("Email:")
    local email = io.read()

    print("Password:")
    local password = io.read()

    -- Fitness related prompts -- 

    print("Age:")
    local age = io.read()

    print("Weight:")
    local weight = io.read()

    print("Goal for amount of water drinken each day:")
    local goalForDrinkingWater = io.read()

    return name, email, password, age, weight, goalForDrinkingWater

end

local name, email, password, age, weight, goalForDrinkingWater = getUserInfo()

local function validateInformationAndWriteToFile(name, email, password, age, weight, goalForDrinkingWater)

    print("Validate that the information below is correct:")
    print("")

    print("Name: " .. name)
    print("Email: " .. email)
    print("Password: " .. password)
    print("Fitness related information")
    print("Age: " .. age)
    print("Age: " .. weight)
    print("Goal for total water dranken: " ..goalForDrinkingWater)

    print("Is the information above corrrect?")
    print("Type 'yes' to create an account.")
    
end

validateInformationAndWriteToFile(name, email, password, age, weight, goalForDrinkingWater)

local input = io.read()

if input == "yes" then

    local function createAccount()

        local file = io.open("account.txt", "a")

        os.execute("sleep 0.05")
        print("Creating account...")
        os.execute("sleep 1.5")
        print("Connecting to server...")

        file:write("Name: " .. name .. "\n")
        file:write("Email: " .. email .. "\n")
        file:write("Password: " .. password .. "\n")
        file:write("Age: " .. age .. "\n")
        file:write("Weight: " .. weight .. "\n")
        file:write("Water goal: " .. goalForDrinkingWater .. "\n")

        os.execute("sleep 0.0000006")
        print("Connected to server!")
        os.execute("sleep 0.04")

        print("Account created with no errors!")
    end
    createAccount()
else
    print("Account was not created due to an error")
end
