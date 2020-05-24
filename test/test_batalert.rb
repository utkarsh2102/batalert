require 'minitest/autorun'
require 'batalert'

class BatalertTest < Minitest::Test

RSpec.describe Batalert do
  it "has a version number" do
    expect(Batalert::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
