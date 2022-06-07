require 'rspec/autorun'
require_relative './main.rb'

RSpec.describe "str_replace" do
  it "True for CS last symbols" do
    str = "CS CS"
      RSpec.expect(str_replace(str)).to eq 2 ** str.length
  end
  it  "True for not CS last symbols" do
    str = "Lorem Ipsum"
      RSpec.expect(str_replace(str)).to eq str.reverse
  end
end