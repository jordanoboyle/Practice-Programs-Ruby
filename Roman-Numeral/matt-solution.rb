def dec_to_rom(number)
    map = [
        {dec: 1000, rom: "M"},
        {dec: 500, rom: "D"},
        {dec: 100, rom: "C"},
        {dec: 50, rom: "L"},
        {dec: 10, rom: "X"},
        {dec: 5, rom: "V"},
        {dec: 1, rom: "I"}
    ]

    numeral = ""

    map.each do |rep|
        if rep[:dec] <= number
            numeral += rep[:rom] * (number / rep[:dec])
            number = number % rep[:dec]
        end
    end
    return numeral
end


pp dec_to_rom(494)

