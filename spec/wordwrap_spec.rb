require "./wordwrap"

describe Wrapper do
    before(:each) do
        @wrapper = described_class.new
    end

    it "can return a shortened string containing only (number) characters" do
        result = @wrapper.wrap("hello world", 2)
        expect(result). to eq("he")
    end

    it "can return a shortened string that includes spaces" do
        result = @wrapper.wrap("hello world", 7)
        expect(result). to eq("hello w")
    end

    it "can return the string with line breaks so no line is longer than the number given" do
        result = @wrapper.wrap("hello world", 7)
        expect(result). to eq("he\nll\no \nw")
    end
end
