require 'rspec/autorun'
require_relative './main.rb'

RSpec.describe 'greetings' do
  it 'True for <18' do
    str = 'Hello, Evgeniy Balmashov. You are under 18 years old, but you can start learning programming right now!'
    [1, 2, 3, 4, 5, 8, 9, 12, 18].each do |value|
      RSpec.expect(greetings('Evgeniy', 'Balmashov', value)).to eq str
    end
  end

  it 'True for >18' do
    str = "Hello, Evgeniy Balmashov. It's just the time to start!"
    [19, 33, 44, 55].each do |value|
      RSpec.expect(greetings('Evgeniy', 'Balmashov', value)).to eq str
    end
  end
end

RSpec.describe 'foobar' do
  it 'False for a or b = 20' do
    RSpec.expect(foobar(19.5, 20)).to eq '39.5'
  end
end
