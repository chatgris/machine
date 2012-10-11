# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'machine/version'

Gem::Specification.new do |s|
  s.name          = "machine"
  s.version       = Machine::VERSION
  s.authors       = ["chatgris"]
  s.email         = ["jboyer@af83.com"]
  s.homepage      = "https://github.com/chatgris/machine"
  s.summary       = "TODO: summary"
  s.description   = "TODO: description"

  s.files         = `git ls-files app lib`.split("\n")
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.rubyforge_project = '[none]'
end
