module Scytale
  # Example
  # plain text = "abcdefghijklmnopqrstuvwxyz"
  #
  #========[matrix of before]
  # abcde
  # fghij
  # klmno
  # pqrst
  # uvwxy
  # z____
  #
  #========[matrix of after compose]
  # afkpu
  # zbglq
  # v_chm
  # rw_di
  # nsx_e
  # joty_
  #
  #========[after flatten]
  # encrypted = "afkpuzbglqv_chmrw_dinsx_ejoty_"

  DEFAULT_LENGTH = 5
  DEFAULT_FILL_CHAR = " ".freeze
  def encrypt(text, length = DEFAULT_LENGTH, fill_char = DEFAULT_FILL_CHAR)
    org_array = text.split("").each_slice(length).to_a
    org_array.last.fill(org_array.last.size...length) { fill_char }
    org_array.transpose.map(&:join).join
  end

  def decrypt(text, length = DEFAULT_LENGTH, fill_char = DEFAULT_FILL_CHAR)
    org_array = text.split("").each_slice((text.size / length.to_f).ceil).to_a
    org_array.transpose.map(&:join).join.gsub(/#{fill_char}*\z/, "")
  end

  module_function :encrypt, :decrypt
end
