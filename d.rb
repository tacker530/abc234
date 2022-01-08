#
# D - Prefix K-th Max
#
N,K = gets.chomp.split.map(&:to_i)
P =   gets.chomp.split.map(&:to_i)

STDERR.puts "[STDERR] Params : N=#{N} K=#{K} P=#{P}"
(K..N).each do |i|
  puts (P[0..(i-1)].max(K)).min
end