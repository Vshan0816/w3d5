require "byebug"
class PolyTreeNode
    attr_reader :parent, :children, :value
  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(new_parent)
        @parent = new_parent
        #  if self.parent != new_parent
        debugger
        self.parent.children << self  if self.parent != nil
        
  end
  
end