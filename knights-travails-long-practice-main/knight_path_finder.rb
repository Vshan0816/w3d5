require_relative "tree_node.rb"
class KnightPathFinder
    attr_reader :pos
    def initialize(pos)
        @root_node = PolyTreeNode.new(pos)
        self.build_move_tree
        @considered_positions = []
        @pos = pos
    end

    def build_move_tree

    end

    def self.valid_moves(pos)
        val_moves = []
        row, col = pos
        val_moves << [row+2, col+1] if KnightPathFinder.valid_pos?([row+2, col+1])
        val_moves << [row+2, col-1] if KnightPathFinder.valid_pos?([row+2, col-1])
        val_moves << [row-2, col+1] if KnightPathFinder.valid_pos?([row-2, col+1])
        val_moves << [row-2, col-1] if KnightPathFinder.valid_pos?([row-2, col-1])
        val_moves << [row+1, col+2] if KnightPathFinder.valid_pos?([row+1, col+2])
        val_moves << [row+1, col-2] if KnightPathFinder.valid_pos?([row+1, col-2])
        val_moves << [row-1, col+2] if KnightPathFinder.valid_pos?([row-1, col+2])
        val_moves << [row-1, col-2] if KnightPathFinder.valid_pos?([row-1, col-2])
        val_moves
    end


    def self.valid_pos?(pos)
        row, col = pos
        (row >= 0 && row < 8) && (col >= 0 && col < 8)
    end
    #avoid repeating positions


    #BFS vs DFS

    def find_path

    end

    def new_move_positions(pos)
        KnightPathFinder.valid_moves(pos).select {|posi|!@considered_positions.include?(posi)}
    end

    def bfs(target)
        queue = []
        queue << self
        until queue.empty?
            result = queue.shift
              if result.pos == target
                return result
              else
                queue += result.new_move_positions
              end
        end
        nil
    end

end