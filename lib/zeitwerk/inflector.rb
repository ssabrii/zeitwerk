# frozen_string_literal: true

if RUBY_ENGINE == "ruby"
  require "zeitwerk/zeitwerk"
  Zeitwerk::Inflector = Zeitwerk::NativeInflector
else
  require_relative "portable_inflector"
  Zeitwerk::Inflector = Zeitwerk::PortableInflector
end
