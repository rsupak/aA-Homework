class Queue
  attr_accessor :queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue.first
  end

  def to_s
    "#{@queue}"
  end
end
