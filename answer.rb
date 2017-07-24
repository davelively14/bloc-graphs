module GraphsAnswer
  class NodeStack
    attr_accessor :start_node, :path

    def initialize(start_node, path)
      @start_node = start_node
      @path = path
    end
  end

  def find_kevin_bacon(start_node)
    stack = [NodeStack.new(start_node, path)]
    answer = nil

    while stack != [] && !answer
      item = stack.pop

      item.node.film_actor_hash.each do |film, actors|
        actors.each do |actor|
          if actor.name == "Kevin Bacon"
            answer = path
            break
          else
            stack.push(NodeStack.new(item.actor, item.path + ["#{film}"])) if item.path.length < 6
          end
        end

        break if answer
      end
    end

    return answer
  end
end
