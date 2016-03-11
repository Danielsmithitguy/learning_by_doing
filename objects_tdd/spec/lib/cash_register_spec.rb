require 'rspec'
require_relative '../../lib/cash_register'

describe CashRegister do
  it 'should be a cashregister' do
    expect(subject).to be_a(CashRegister)
  end

  describe '#total' do
    it 'should return the total' do
      expect(subject.total).to eq(0)
    end
  end

  describe '#add' do
    it 'should add to a running total' do
      subject.add(3)
      subject.add(5)
      expect(subject.total).to eq(8)
    end
  end

  describe '#subtract' do
    it 'should subtract from the running total' do
      subject.subtract(3)
      expect(subject.total).to eq(-3)
    end

    describe '#pay' do
      context 'should pay to balance' do
        it 'total still has a standing balance' do
          subject.add(5)
          subject.pay(4)
          expect(subject.total).to eq(1)
        end
        it 'total returns with change, and then sets total to 0' do
          subject.add(5)
          expect(subject.pay(6)).to eq(1)
          expect(subject.total).to eq(0)
        end
      end
    end
  end
end
