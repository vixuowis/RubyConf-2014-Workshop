module Calc
  def self.eval(string)

  	if string.include? "+"
  		a,b = string.split("+")
  		a.to_i + b.to_i
  	elsif string.include? "-"
  		a,b = string.split("-")
  		a.to_i - b.to_i
  	elsif string.include? "*"
  		a,b = string.split("*")
  		a.to_i * b.to_i
  	elsif string.include? "/"
  		a,b = string.split("/")
  		a.to_i / b.to_i
  	else
  		string.to_i
  	end
  end
end