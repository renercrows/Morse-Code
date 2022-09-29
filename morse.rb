def decode_char(char)
  morse = {
    '.-' => 'a',
    '-...' => 'b',
    '-.-.' => 'c',
    '-..' => 'd',
    '.' => 'e',
    '..-.' => 'f',
    '--.' => 'g',
    '....' => 'h',
    '..' => 'i',
    '.---' => 'j',
    '-.-' => 'k',
    '.-..' => 'l',
    '--' => 'm',
    '-.' => 'n',
    '---' => 'o',
    '.--.' => 'p',
    '--.-' => 'q',
    '.-.' => 'r',
    '...' => 's',
    '-' => 't',
    '..-' => 'u',
    '...-' => 'v',
    '.--' => 'w',
    '-..-' => 'x',
    '-.--' => 'y',
    '--..' => 'z',
    ' ' => ' ',
    '.----' => '1',
    '..---' => '2',
    '...--' => '3',
    '....-' => '4',
    '.....' => '5',
    '-....' => '6',
    '--...' => '7',
    '---..' => '8',
    '----.' => '9',
    '-----' => '0'
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
