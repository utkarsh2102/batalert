# frozen_string_literal: true

require 'minitest/autorun'
require 'batalert'

class BatalertTest < Minitest::Test
  def version?
    expect(Batalert::VERSION).not_to be nil
  end

  def does_something
    expect(false).to eq(true)
  end
end
