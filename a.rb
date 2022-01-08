# A - Weird Function
#  f(f(f(t)+t)+f(f(t)))
#  f(x)=x^2+2x+3
# 
t = gets.chomp.to_i

STDERR.puts "x = #{t}"

def f(x)
  x**2 + 2*x + 3
end

y = f(f(f(t)+t)+f(f(t)))
puts "#{y}"