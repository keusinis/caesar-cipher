# frozen_string_literal: true

def caesar_cipher(text, shift)
  text.chars.map do |char|
    case char
    when "A".."Z"
      (((char.ord - 65 + shift) % 26) + 65).chr
    when "a".."z"
      (((char.ord - 97 + shift) % 26) + 97).chr
    else
      char
    end
  end.join
end
