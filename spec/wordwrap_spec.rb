require "./wordwrap"

describe Wrapper do
    before(:each) do
        @wrapper = described_class.new
    end

    it "can check whether string is longer than number" do
        result = @wrapper.wrap("hi", 7)
        expect(result).to eq(false)

        result = @wrapper.wrap("hi", 1)
        expect(result).to eq(true)
    end

    it "can return a shortened string containing only (number) characters" do
        result = @wrapper.wrap("hello world", 2)
        expect(result). to eq("he")
    end
end
