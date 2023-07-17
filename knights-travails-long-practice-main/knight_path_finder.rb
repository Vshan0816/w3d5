require_relative "tree_node.rb"
class KnightPathFinder
    def initialize(pos)
        @root_node = PolyTreeNode.new(pos)
        self.build_move_tree
    end

    def build_move_tree
    end

    def self.valid_moves(pos)
    end


    def valid_pos(pos)
        row, col = pos
        (row >= 0 && row < 8) && (col >= 0 && col < 8)
    end
    #avoid repeating positions


    #BFS vs DFS

    def find_path

    end


end