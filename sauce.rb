require 'benchmark'

puts Benchmark.measure {
def sort(array)
  array.select { |n| n == false } + array.select { |n| n == true }
end

array = [true, false, true, false]
p sort(array)}



puts Benchmark.measure {
def sort(array)
  array.sort { |a,b| a.to_s <=> b.to_s } 
end

array = [false, true, true, false]
p sort(array)}



puts Benchmark.measure {

def sort(array)
  new_array = []
  array.each do |x|
    if x == false
      new_array.unshift(x)
    else 
      new_array << x
    end
  end
  new_array
end

array = [false, true, true, false]
p sort(array) }