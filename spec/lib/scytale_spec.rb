require 'spec_helper'
require 'scytale'

RSpec.describe Scytale do
  describe '.encrypt' do
    it '暗号化テスト' do
      before = 'abcdefghijklmnopqrstuvwxyz'
      after  = 'afkpuzbglqv chmrw dinsx ejoty '
      expect(Scytale.encrypt(before)).to eq(after)
    end
  end

  describe '.decrypt' do
    it '復号テスト' do
      before = 'afkpuzbglqv chmrw dinsx ejoty '
      after  = 'abcdefghijklmnopqrstuvwxyz'
      expect(Scytale.decrypt(before)).to eq(after)
    end
  end
end
