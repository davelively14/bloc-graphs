include RSpec

require_relative 'actor'

RSpec.describe Actor, type: Class do
  let

  describe "#init" do
    it "initializes the variables" do
      node = Actor.new("test_name")
      expect(node.name).to eq "test_name"
      expect(node.films).to eq []
    end
  end

  describe "#radi" do
    it "returns list of movies" do

    end
  end
end
