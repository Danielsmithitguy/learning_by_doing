require 'rspec'
require_relative '../../lib/custom_object'

describe Pet do
  it 'should be a pet' do
    expect(subject).to be_truthy
    name = Pet.new
    name.stubs(:foo) {'test'}
  end
end

