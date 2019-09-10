require "test_helper"
require "zeitwerk/portable_inflector"
require_relative "inflector_assertions"

class TestInflector < Minitest::Test
  def camelize(str)
    Zeitwerk::PortableInflector.new.camelize(str, nil)
  end

  include InflectorAssertions
end
