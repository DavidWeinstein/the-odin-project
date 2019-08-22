# The method below works for an all lower case, all alpha string, but fails when upcase or " " or ! is put in. Will have to research this instead of jumping right in.

def caesar_cipher(string, num)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    new_string = ""
    string.each_char do |char|
        old_idx = alphabet.index(char)
        new_idx = old_idx + num
        new_char = alphabet[new_idx % 26]
        new_string += new_char
    end
    return new_string
end


print caesar_cipher("What a string!", 5)
puts
