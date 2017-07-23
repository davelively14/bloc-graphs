include RSpec

require_relative 'film'
require_relative 'actor'

RSpec.describe Film, type: Class do
  let(:braveheart) { Film.new("Braveheart") }

  let(:mel_gibson) { Actor.new("Mel Gibson")}

  before do
    braveheart.add_actor(mel_gibson)
  end

  describe "#init" do
    it "initializes the variables" do
      film = Film.new("Land Before Time")
      expect(film.title).to eq "Land Before Time"
      expect(film.actors).to eq []
    end
  end

  describe "#add_actor" do
    it "adds an actor to the film and updates the actor.films array" do
      dark_knight = Film.new("Dark Knight")
      bale = Actor.new("Christian Bale")
      dark_knight.add_actor(bale)
      expect(dark_knight.actors).to eq [bale]
      expect(bale.films).to eq [dark_knight]
    end

    it "will not duplicate an actor entry for a film" do
      expect(braveheart.actors).to eq [mel_gibson]
      expect(mel_gibson.films).to eq [braveheart]
      braveheart.add_actor(mel_gibson)
      expect(braveheart.actors).to eq [mel_gibson]
      expect(mel_gibson.films).to eq [braveheart]
    end
  end
end
