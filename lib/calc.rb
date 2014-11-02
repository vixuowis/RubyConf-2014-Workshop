module Calc
  def self.eval(string)
    # puts string
    if string =~ /(.*)(\+|\-|\*|\/)(.*)/
      # puts "-- #{$1},#{$2},#{$3}"
      a,op,b = eval($1), $2, eval($3)
      case op
        when "+" then a + b
        when "-" then (a - b) < 0 ? 0 : a - b
        when "*" then a * b
        when "/" then a / b
      end
  	elsif string =~/\A\d+\z/
  		string.to_i
  	end
  end
end

# puts Calc.eval("1-2+2-2+2")