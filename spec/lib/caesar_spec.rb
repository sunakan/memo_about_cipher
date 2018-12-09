require "spec_helper"
require "caesar"

RSpec.describe Caesar do
  describe ".encrypt" do
    it "暗号化テスト 1" do
      expect(Caesar.encrypt("abc")).to eq("def")
    end
    it "暗号化テスト 2" do
      expect(Caesar.encrypt("xyz")).to eq("abc")
    end
  end

  describe ".decrypt" do
    it "復号テスト 1" do
      expect(Caesar.decrypt("def")).to eq("abc")
    end
    it "復号テスト 2" do
      expect(Caesar.decrypt("abc")).to eq("xyz")
    end
  end
end
