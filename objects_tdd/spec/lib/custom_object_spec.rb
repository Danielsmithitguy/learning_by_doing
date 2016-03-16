require 'rspec'
require_relative '../../lib/custom_object_toaster'

describe Toaster do
  it 'I am a toaster' do
    expect(subject).to be_a(Toaster)
  end

  describe '#toasted?' do
    context "am I toasted?" do
      it 'should return true if toasted' do
        expect(subject.toasted?(1)).to be_truthy
      end
      it 'should return false if not toasted' do
        expect(subject.toasted?(0)).to be_falsey
      end
    end
  end

  describe "#pluged_in?" do
    context "am I pluged in?" do
      it 'should return true if pluged in' do
        expect(subject.pluged_in?(1)).to be_truthy
      end
      it 'should return false if not pluged in' do
        expect(subject.pluged_in?(0)).to be_falsey
      end
    end
  end
  describe "#currently_in_use?" do
    context "am I in use?" do
      it 'should return false if not in use' do
        expect(subject.currently_in_use?(1)).to be_falsey
      end
      it 'should return true if in use' do
        expect(subject.currently_in_use?(0)).to be_truthy
      end
    end
  end
end

