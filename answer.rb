module GraphsAnswer
  def find_kevin_bacon(start_node)
    queue = [{node: start_node, path: "", level: 1}]
    next_up = queue.pop

    find_path(next_up.node, queue, next_up.path, next_up.level)
  end

  def find_path(node, queue, path, level)
    found = false

    node.film_actor_hash.each do |k, actors|
      actors.each do |actor|
        if actor.name == "Kevin Bacon"
          path << "#{k}"
          found = true
          break
        else
          queue.push({node: actor, path: path << "#{k}", level: level + 1}) if level < 6
        end
      end

      break if found
    end

    if found
      return path
    else
      next_up = queue.shift
      find_path(next_up.node, queue, path << " -> #{next_up.path}", next_up.level)
    end
  end
end
