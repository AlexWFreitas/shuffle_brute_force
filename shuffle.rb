
repeat_counter = 0
tries_counter = 0

def make_hand

    cards = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5,
    6, 6, 7, 7, 8, 8, 9, 9, 10, 11, 12, 13, 
    14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 
    24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 
    34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 
    44, 45, 46, 47, 48, 49, 50, 51, 52, 10,
    11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
    41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
    51, 52]

    hand = []

    while hand.length < 11
        
        hand << cards.slice!(rand(0..(cards.length()-1)))
    end


    hand
end

def check_hand(hand)
    hand.each_index do |i|
        for j in i..(hand.length - 1)
            if i != j && hand[i] == hand[j]
                puts hand[i] 
                puts hand[j]
                return true
            end
        end
    end
    return false
end

while tries_counter < 5000000
    tries_counter += 1
    if check_hand(make_hand)
        repeat_counter += 1
    end
end

puts "Número de tentativas #{tries_counter}"
puts "Número de ocorrências de pelo menos uma repetição #{repeat_counter}"
puts "Porcentagem de ocorrências de repetição: " + (repeat_counter.to_f*100/tries_counter.to_f).to_s + "%."


