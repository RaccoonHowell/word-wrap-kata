require "./wordwrap"

describe Wrapper do
    before(:each) do
        @wrapper = described_class.new
    end

    it "can return a shortened string containing only (number) characters" do
        result = @wrapper.wrap("hello world", 2)
        expect(result). to eq("he")
    end
end
