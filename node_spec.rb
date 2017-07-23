include RSpec

require_relative 'node'

RSpec.describe Node, type: Class do
  describe "#init" do
    it "initializes the variables" do
      node = Node.new("test_name")
      expect(node.name).to eq "test_name"
      expect(node.film_actor_hash).to eq []
    end
  end
end
