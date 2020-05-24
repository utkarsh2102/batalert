require 'minitest/autorun'
require 'batalert'

class BatalertTest < Minitest::Test

  def has_version
    expect(Batalert::VERSION).not_to be nil
  end

  def does_something
    expect(false).to eq(true)
  end

end
