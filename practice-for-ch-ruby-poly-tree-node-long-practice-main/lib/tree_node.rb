require "byebug"
class PolyTreeNode
    attr_reader :parent, :children, :value
  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(new_parent)
        @parent.children.delete(self) if @parent != nil
        @parent = new_parent
        self.parent.children << self  if self.parent != nil && !self.parent.children.include?(self)
  end

  def add_child(child)
    child.parent=(self) 
  end

  def remove_child(child)
    child.parent=(nil)
  end
  
end