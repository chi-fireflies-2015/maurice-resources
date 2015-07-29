require_relative "../reverse"

describe "#reverse_copy" do

  describe "when passed a list of elements" do
    forwards = "oprah".split("")
    backwards = "harpo".split("")

    it "reverses the list" do
      expect( reverse_copy(forwards) ).to eq( backwards )
    end
  end

  describe "when passed a list of elements" do
    forwards = "not".split("")
    backwards = "ton".split("")

    it "reverses the list" do
      expect( reverse_copy(forwards) ).to eq( backwards )
    end
  end

  describe "when passed a list of one element" do
    it "answers a list of one element" do
      expect( reverse_copy([345]) ).to eq( [345] )
    end
  end

  describe "when passed an empty list" do
    it "answers an empty list" do
      expect( reverse_copy([]) ).to eq( [] )
    end
  end
end
