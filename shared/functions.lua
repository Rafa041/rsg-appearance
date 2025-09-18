local clothing = require 'data.clothing'
function CalculatePrice(newClothes, currentClothes, isMale)
    local price = 0
    local clothingG = isMale and clothing['male'] or clothing['female']
    for categoryName,_ in pairs(clothingG) do
        local newHash = newClothes[categoryName] and newClothes[categoryName].hash
        local currentHash = currentClothes[categoryName] and currentClothes[categoryName].hash
        if newHash and newHash ~= currentHash then
            price = price + RSG.Price[categoryName]
        end
    end
    return price
end