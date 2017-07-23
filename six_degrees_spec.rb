include RSpec

require_relative 'six_degrees'

RSpec.describe SixDegrees, type: Class do
  describe "#init" do
    it "initializes Kevin Bacon and a few of his movies" do
      six_degrees = SixDegrees.new()
      expect(six_degrees.actors[0].name).to eq "Kevin Bacon"
      expect(six_degrees.films.length).to eq 6
      expect(six_degrees.kb.name).to eq "Kevin Bacon"
    end
  end
end
