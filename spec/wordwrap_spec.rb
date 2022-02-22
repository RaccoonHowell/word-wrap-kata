require "./wordwrap"

describe Wrapper do
    before(:each) do
        @wrapper = described_class.new
    end

    it "can check whether string is longer than number" do
        result = @wrapper.wrap("hi", 7)
        expect(result).to eq(false)

        result2 = @wrapper.wrap("helloooo", 5)
        expect(result2).to eq(true)
    end
end
