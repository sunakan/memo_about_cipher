module Caesar
  ALPHABETS   = ('a'..'z').to_a.freeze
  DEFAULT_ROT = 3.freeze
  def encrypt(text, rot = DEFAULT_ROT)
    map = ALPHABETS.zip(ALPHABETS.rotate(rot)).to_h
    text.each_char.inject('') {|encrypted, char| "#{encrypted}#{map[char]}"}
  end

  def decrypt(text, rot = DEFAULT_ROT)
    map = ALPHABETS.zip(ALPHABETS.rotate(-rot)).to_h
    text.each_char.inject('') {|decrypted, char| "#{decrypted}#{map[char]}"}
  end

  module_function :encrypt, :decrypt
end
