class Film
  attr_accessor :title, :actors

  def initialize(title)
    @title = title
    @actors = []
  end

  def add_actor(actor_node)
    if !@actors.include?(actor_node)
      @actors.push(actor_node)
      actor_node.films.push(self)
    end
  end
end
