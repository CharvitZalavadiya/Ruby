def caesar_cipher(text, shift)
  shift = shift % 26  # handle shifts larger than 26
  result = ""

  text.each_char do |char|
    if char.match(/[A-Z]/)
      # Shift uppercase letters
      new_char = ((char.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
      result << new_char
    elsif char.match(/[a-z]/)
      # Shift lowercase letters
      new_char = ((char.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr
      result << new_char
    else
      # Keep non-alphabetic characters unchanged
      result << char
    end
  end

  result
end

def run_loop()
  loop do
    puts "Enter text to encrypt (or type 'exit' to quit):"
    text = gets.chomp
    
    if text.downcase == "exit"
      puts "Goodbye!"
      break
    end
    
    puts "Enter shift value (integer):"
    shift = gets.chomp.to_i
    encrypted_text = caesar_cipher(text, shift)
    puts "Encrypted text: #{encrypted_text}"
    puts # empty line for better readability
  end
end

# Example usage:
run_loop()
