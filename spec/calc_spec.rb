require 'rspec'
require 'calc'

describe 'calc' do

  # Basic digits
  it 'should eval 2 to 2' do
    # Calc.eval('2').should eq 2 Deprecation!
    expect(Calc.eval('2')).to eq 2
  end

  it 'should eval 11 to 11' do
    # Calc.eval('11').sould eq 11
    expect(Calc.eval('11')).to eq 11
  end


  # Basic calculations
  it 'should eval 1+2 to 3' do
    expect(Calc.eval('1+2')).to eq 3
  end

  it 'should eval 3-1 to 2' do
    expect(Calc.eval('3-1')).to eq 2
  end
end
