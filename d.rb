#
# D - Prefix K-th Max
#
N,K = gets.chomp.split.map(&:to_i)
P =   gets.chomp.split.map(&:to_i)

#STDERR.puts "[STDERR] Params : N=#{N} K=#{K} P=#{P}"
last = []
last_data = 0
(K..N).each do |i|
  if i == K then
    last = P[0..(i-1)].max(K)
    #STDERR.puts "#{last}"
  else 
   if last_data < P[i-1]
    last.delete(last_data)
    last << P[i-1]
   end
  end
   #STDERR.puts "last  = #{last}"
  last_data = last.min
  puts "#{last_data}"
end