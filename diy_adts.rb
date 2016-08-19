class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack.push(el)
  end

  def remove
    @stack.pop
  end

  def show
    p @stack
  end

end

class Queue
  def initialize
    @queue = []
  end

  def queue(el)
    @queue.unshift(el)
  end

  def dequeue
    @queue.pop
  end

  def show
    p @queue
  end
end

class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    if has_key?(key)
      @map.each do |entry|
        entry[1] = value if entry[0] == key
      end
    else
      @map.push([key, value])
    end
  end

  def has_key?(key)
    @map.each do |entry|
      return true if entry[0] == key
    end
    false
  end

  def lookup(key)
    @map.each { |el| return el if el[0] == key }
  end

  def remove(key)
    @map.map { |el| @map.delete(el) if el[0] == key }
  end
end
