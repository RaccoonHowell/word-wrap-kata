require "./wordwrap"

describe Wrapper do
    before(:each) do
        @wrapper = described_class.new
    end

    it "can return a string" do
        result = @wrapper.wrap
        expect(result).to eq('hello')
    end

    it "can return a string that is passed into the function" do
        esult = @wrapper.wrap('hi')
        expect(result).to eq('hi')
    end
end
