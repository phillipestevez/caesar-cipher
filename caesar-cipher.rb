puts "Tell me a secret" #Ask user for message to encrypt
message = gets.chomp #Store message in variable
puts "Shift by:" #Ask user for shift number
shift = gets.chomp.to_i #Store shift number in variable

def caesar_cipher(str, num) #Create method to shift each letter in message by given number
    dict = ("a".."z").to_a
    dict_cap = ("A".."Z").to_a
    i = 0
    caesar = ""
    while i < str.length do
        if str[i].match(/\W/)
            caesar << str[i]
            i += 1
        elsif str[i] === str[i].capitalize
            caesar << dict_cap[(dict_cap.index(str[i]) + num) % 26]
            i += 1
        else
            caesar << dict[(dict.index(str[i]) + num) % 26]
            i += 1
        end
    end
    puts caesar
end

caesar_cipher(message, shift)