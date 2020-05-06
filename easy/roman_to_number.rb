# @param {String} s
# @return {Integer}
def roman_to_int(s)
    result = 0
    roman_chars = s.split('')
    total_char = roman_chars.length

    i = 0
    while i < total_char
        current_char = value(roman_chars[i])
        next_char = (i+1 < total_char) ? value(roman_chars[i+1]) : 0
        if current_char < next_char
            result += next_char - current_char
            i += 2
        else
            result += current_char
            i += 1
        end
    end
    result
end

def value(char)
    if char == 'I'
        1
    elsif char == 'V'
        5
    elsif char == 'X'
        10
    elsif char == 'L'
        50
    elsif char == 'C'
        100
    elsif char == 'D'
        500
    elsif char == 'M'
        1000
    end     
end