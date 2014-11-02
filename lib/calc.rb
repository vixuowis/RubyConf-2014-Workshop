module Calc

  def self.eval(string,doit=true)
    # puts "eval #{string}"

    if string =~ /\(.*\)/ and doit
      string = parse_brackets(string)
    end

    if string =~ /(.*)(\+|\-)(.*)/
      # puts "-- #{$1},#{$2},#{$3}"
      a,op,b = eval($1,doit), $2, eval($3,doit)
      case op
        when "+" then a + b
        when "-" then (a - b) < 0 ? 0 : a - b
      end
    elsif string =~ /(.*)(\*|\/)(.*)/
      # puts "-- #{$1},#{$2},#{$3}"
      a,op,b = eval($1,doit), $2, eval($3,doit)
      case op
        when "*" then a * b
        when "/" then a / b
      end
  	else string =~/\A\d+\z/
  		string.to_i
  	end
  end

  def self.parse_brackets(string)
    if string =~ /(.*)\((.*)\)(.*)/
      # puts "pb ($2) #{$1},#{$2},#{$3}"
      result = $1 + parse_brackets($2).to_s + $3
      # puts "pb ($2-rs) #{result}"
      return result
    else
      # puts "pb (string) #{string}"
      result = eval(string,false).to_s
      # puts "pb (string-rs) #{result}"
      return result
    end
  end
end

# puts Calc.eval("(8-4)+(6-8)/3")
