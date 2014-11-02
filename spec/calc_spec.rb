require 'rspec'
require 'calc'

describe 'calc' do

  context 'Basic digits' do
    it 'should eval 2 to 2' do
      # Calc.eval('2').should eq 2 Deprecation!
      expect(Calc.eval('2')).to eq 2
    end
    it 'should eval 11 to 11' do
      # Calc.eval('11').sould eq 11
      expect(Calc.eval('11')).to eq 11
    end
  end

  context 'Basic calculations' do
    it 'should eval 1+2 to 3' do
      expect(Calc.eval('1+2')).to eq 3
    end

    it 'should eval 3-1 to 2' do
      expect(Calc.eval('3-1')).to eq 2
    end

    it 'should eval 1-1 to 0' do
      expect(Calc.eval('1-1')).to eq 0
    end 

    it 'should eval 2*1 to 2' do
      expect(Calc.eval('2*1')).to eq 2
    end

    it 'should eval 4/2 to 2' do
      expect(Calc.eval('4/2')).to eq 2
    end
  
    # integer division
    it 'should eval 4/3 to 1' do
      expect(Calc.eval('4/3')).to eq 1
    end
  end

  context 'Minus result < 0' do
    it 'should eval 3-5 to 0' do
      expect(Calc.eval('3-5')).to eq 0
    end
  end

  context 'multiple same calcs' do
    it 'should eval 1+1+1 to 3' do
      expect(Calc.eval('1+1+1')).to eq 3
    end

    it 'should eval 3*2*4*2 to 48' do
      expect(Calc.eval('3*2*4*2')).to eq 48
    end

    it 'should eval 5-2-1 to 2' do
      expect(Calc.eval('5-2-1')).to eq 2
    end
    it 'should eval 5-2-8-1 to 0' do
      expect(Calc.eval('5-2-8-1')).to eq 0
    end
  end

  context 'multiple different calcs, same priority' do
    it 'should eval 1+3-2 to 2' do
      expect(Calc.eval('1+3-2')).to eq 2
    end

    it 'should eval 3*2*4/2 to 12' do
      expect(Calc.eval('3*2*4/2')).to eq 12
    end

    it 'should eval 5-2+1-8 to 0' do
      expect(Calc.eval('5-2+1-8')).to eq 0
    end
  end

  context 'multiple different calcs, different priority' do
    it 'should eval 1+3*2 to 7' do
      expect(Calc.eval('1+3*2')).to eq 7
    end

    it 'should eval 3*2-4/2 to 2' do
      expect(Calc.eval('3*2-4/2')).to eq 4
    end

    it 'should eval 8-6-8/3 to 0' do
      expect(Calc.eval('8-6-8/3')).to eq 0
    end
  end

  context 'with blanket' do
    it 'should eval 1+3*2 to 7' do
      expect(Calc.eval('(1+3)*2')).to eq 8
    end

    it 'should eval 3*2-4/2 to 2' do
      expect(Calc.eval('(3*2-4)/2')).to eq 1
    end

    it 'should eval 8-6-8/3 to 0' do
      expect(Calc.eval('(8-7)+(6-8)/3')).to eq 1
    end
  end
end
