require 'rspec'
require 'calc'

describe 'calc' do

  it 'should eval 2 to 2' do
    # Calc.eval('2').should eq 2
    expect(Calc.eval('2')).to eq 2
  end

  it 'should eval 11 to 11' do
    # Calc.eval('11').sould eq 11
    expect(Calc.eval('11')).to eq 11
  end
end
