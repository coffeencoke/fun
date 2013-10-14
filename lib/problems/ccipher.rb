module CCipher
  def self.decode(message, shifts)
    message.each_char.with_index do |char, index|
      original_index = char.ord-alphabet_offset
      unshifted_index = original_index-1 - shifts
      new_index = unshifted_index % alphabet.size

      message[index] = alphabet[new_index]
    end
    message
  end

  def self.alphabet
    @alphabet ||= (1..26).map{|a| (a+alphabet_offset).chr }
  end

  def self.alphabet_offset
    @offset ||= "A".ord-1
  end
end
