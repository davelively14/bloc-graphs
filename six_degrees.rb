require_relative 'actor'
require_relative 'film'

class SixDegrees
  attr_reader :films, :actors, :kb
  
  def initialize
    @films = []
    @actors = []
    @kb = build_kevin
  end

  def add_film(title)
    @films.push(Film.new(title))
  end

  def add_actor(name)
    @actors.push(Actor.new(title))
  end

  private

  def build_kevin
    kb = Actor.new("Kevin Bacon")
    @actors.push(kb)
    new_films = []

    new_films.push(Film.new("Footloose"))
    new_films.push(Film.new("Quicksilver"))
    new_films.push(Film.new("Tremors"))
    new_films.push(Film.new("Apollo 13"))
    new_films.push(Film.new("Mystic River"))
    new_films.push(Film.new("Sleepers"))

    new_films.each do |film|
      film.add_actor(kb)
      @films.push(film)
    end

    return kb
  end
end
