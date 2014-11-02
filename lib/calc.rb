module Calc
  def self.eval(string)
    if string =~ /\A(\d+)(\D)(\d+)\z/
      a,op,b = $1.to_i, $2, $3.to_i
      case op
      when "+" then a + b
      when "-" then a - b
      when "*" then a * b
      when "/" then a / b
      end
  	elsif string =~/\A\d+\z/
  		string.to_i
  	end
  end
end