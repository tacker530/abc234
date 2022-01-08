# Longest Segment	
N  = gets.chomp.to_i
point = []
N.times do |i|
  point[i] = gets.chomp.split.map(&:to_i) 
end
pairs = point.combination(2)
max = 0
pairs.each do |c|
  x = c[1][0] - c[0][0]
  y = c[1][1] - c[0][1]
  length = Math.sqrt( x**2 + y**2 )
  max = length if length > max
end
puts max

