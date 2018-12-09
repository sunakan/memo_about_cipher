# 単一換字式暗号
module SimpleSubstitution
  ALPHABETS_AND_NUMBERS = (("a".."z").to_a + ("0".."9").to_a).freeze
  CHAR_MAP = ALPHABETS_AND_NUMBERS.zip(ALPHABETS_AND_NUMBERS.each_slice(2).map(&:reverse).flatten).to_h

  def encrypt(text)
    text.chars.map { |c| CHAR_MAP[c] }.join
  end

  def decrypt(text)
    decrypt_char_map = CHAR_MAP.invert
    text.chars.map { |c| decrypt_char_map[c] }.join
  end

  module_function :encrypt, :decrypt
end
