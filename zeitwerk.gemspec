require_relative "lib/zeitwerk/version"

Gem::Specification.new do |spec|
  spec.name        = "zeitwerk"
  spec.summary     = "Efficient and thread-safe constant autoloader"
  spec.description = <<-EOS
    Zeitwerk implements constant autoloading with Ruby semantics. Each gem
    and application may have their own independent autoloader, with its own
    configuration, inflector, and logger. Supports autoloading, preloading,
    reloading, and eager loading.
  EOS

  spec.author     = "Xavier Noria"
  spec.email      = 'fxn@hashref.com'
  spec.license    = "MIT"
  spec.homepage   = "https://github.com/fxn/zeitwerk"
  spec.extensions = %w(ext/zeitwerk/extconf.rb)
  spec.files      = Dir.glob("lib/**/*.rb") + ["README.md", "ext/zeitwerk/extconf.rb", "ext/zeitwerk/zeitwerk.c"]
  spec.version    = Zeitwerk::VERSION

  spec.required_ruby_version = ">= 2.4.4"
end
