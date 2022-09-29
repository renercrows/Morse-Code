def decode_char(char)
  morse = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
  morse[char]
end

def decode_word(word)
  new_str = ''
  word.split.each do |char|
    new_str += decode_char(char)
  end
  my_string
end

def decode_sentence(sentence)
  new_sentence = ''
  sentence.split('   ').each { |char| new_sentence += "#{decode_word(char)} " }
  new_sentence
end

puts decode_char('.-')
puts decode_word('-- -.--')
puts decode_sentence('-- -.--   -. .- -- .')
puts decode_sentence(' .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
