require "test_helper"

if RUBY_ENGINE == "ruby"
  require "zeitwerk/zeitwerk"
  require_relative "inflector_assertions"

  class TestNativeInflector < Minitest::Test
    def camelize(str)
      Zeitwerk::NativeInflector.new.camelize(str, nil)
    end

    include InflectorAssertions
  end
end
