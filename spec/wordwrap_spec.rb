require "./wordwrap"

describe Wrapper do
    before(:each) do
        @wrapper = described_class.new
    end

    it "can return a string that is passed into the function" do
        result = @wrapper.wrap("hi")
        expect(result).to eq("hi")
    end

    it "can check whether string is longer than number" do
        result = @wrapper.wrap("hi", 7)
        expect(result).to eq(false)
    end
end
