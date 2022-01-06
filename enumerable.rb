module Enumerable
  def all?
    each { |n| return false unless yield(n) }
  end

  def any?
    each { |n| return true if yield(n) }
    false
  end

  def filter
    arr = []
    each { |n| arr.push(n) if yield(n) }
  end
end
