class Bst
  VERSION = 1
  attr_reader :data, :left, :right

  def initialize(data=nil)
    @data = data
    @left = nil
    @right = nil
  end

  def insert(new_data)
    if new_data <= data
      left.nil? ? @left = self.class.new(new_data) :
      left.insert(new_data)
    else
      right.nil? ? @right = self.class.new(new_data) : right.insert(new_data)
    end
  end

  def each(&block)
    return enum_for(:each) unless block_given?

    left.each(&block) unless left.nil?
    yield data
    right.each(&block) unless right.nil?
  end
end
