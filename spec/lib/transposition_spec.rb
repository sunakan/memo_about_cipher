require "spec_helper"
require "transposition"

RSpec.describe Transposition do
  describe ".encrypt" do
    it "暗号化テスト" do
      expect(Transposition.encrypt("abcde")).to eq("badce")
    end
  end

  describe ".decrypt" do
    it "復号テスト" do
      expect(Transposition.decrypt("badce")).to eq("abcde")
    end
  end
end
