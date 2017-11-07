def caesar_cipher(string, key)
    crypt_array = []
      string.split('').each do |char|
          if /[a-zA-Z]/.match(char)
              crypt_ord = char.ord + key
              crypt_ord -= 26 if crypt_ord.between?(91, 91 + key) || crypt_ord.between?(123, 123 + key)
              crypt_array << crypt_ord.chr
            else
              crypt_array << char
          end
      end
      crypt_array.join('')
  end

  puts 'Enter string to be converted.'
  string_input = gets.chomp
  
  puts 'Enter key number.'
  key_number = gets.chomp.to_i

  puts 'This is the encrypted version of your string: '
  puts caesar_cipher(string_input, key_number)
