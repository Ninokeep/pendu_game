



wordHidden = ['t','o','t','o']
wordHiddenCopied = ['t','o','t','o']
wordHiddenWithSpecialCharactere   = wordHidden.map { |element| '*'}
life = 5

while life > 0 && wordHiddenCopied.length > 0
puts 'Enter a word ...'
result = gets.chomp

test = wordHiddenCopied.each_with_index.find { | element, index | result == element }


if test
  wordHiddenCopied.delete_at(test[1])
  wordHiddenWithSpecialCharactere[test[1]] = test[0]
  wordHiddenCopied.length == 0 ? (puts 'WINE !!!') : (puts wordHiddenWithSpecialCharactere.join(' '))
else
    life -= 1
    if life <= 4
      puts " ________"
      puts " |      |"
    else
      puts "         "
      puts "         "
    end

    if life <= 3
      puts " |      O"
    else
      puts " |        "
    end

    if life <= 2
      puts " |     /|\\"
    else
      puts " |        "
    end

    if life <= 1
      puts " |     / \\"
    else
      puts " |        "
    end

    puts "_|_"
  end

end
