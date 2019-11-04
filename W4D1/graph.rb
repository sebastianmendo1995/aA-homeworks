require "set"

class GraphNode

    def initialize(val)
        @val = val
        @neighbors = []
    end

    def add_neighboard(node)
        @neighbors << node
    end

    def bfs(starting_node, target_value)
        visit = Set.new
        queue = [starting_node]
        while !queue.empty?
            node = queue.shift

            while !visit.include?(node) 

                if node.val == target_value
                    return node
                else
                    if !node.neighbors.empty? 
                        visit.add(node)
                        queue += node.neighbors
                    else
                        return nil
                    end
                end
            end
        end
    end

    attr_accessor :val, :neighbors
end


a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]
