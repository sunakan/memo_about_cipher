require "spec_helper"
require "simple_substitution"

RSpec.describe SimpleSubstitution do
  describe ".encrypt" do
    it "暗号化テスト 1" do
      expect(SimpleSubstitution.encrypt("abc123")).to eq("bad032")
    end
    it "暗号化テスト 2" do
      before = "abcdefghijklmnopqrstuvwxyz0123456789"
      after  = "badcfehgjilknmporqtsvuxwzy1032547698"
      expect(SimpleSubstitution.encrypt(before)).to eq(after)
    end
  end

  describe ".decrypt" do
    it "復号テスト 1" do
      expect(SimpleSubstitution.decrypt("bad032")).to eq("abc123")
    end
    it "復号テスト 2" do
      before = "badcfehgjilknmporqtsvuxwzy1032547698"
      after  = "abcdefghijklmnopqrstuvwxyz0123456789"
      expect(SimpleSubstitution.decrypt(before)).to eq(after)
    end
  end
end
