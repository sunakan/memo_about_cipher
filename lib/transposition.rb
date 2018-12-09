# 転置式暗号(いわゆるアナグラム)
module Transposition
  # Example
  # plain text = "abcde"
  #
  #======2文字ずつに分ける
  # ab cd e
  #======それぞれ入れ替える
  # ba dc e
  #
  # encrypted  = "badce"

  BLOCK_LENGTH = 2

  def encrypt(text)
    process(text)
  end

  def decrypt(text)
    process(text)
  end

  module_function :encrypt, :decrypt

  class << self
    def process(text)
      text.chars.each_slice(BLOCK_LENGTH).map(&:reverse).join
    end
  end

  private_class_method :process
end
