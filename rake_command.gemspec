# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rake_command/version'

Gem::Specification.new do |gem|
  gem.name          = "rake_command"
  gem.version       = RakeCommand::VERSION
  gem.authors       = ["daichi"]
  gem.email         = ["prinum101@gmail.com"]
  gem.description   = "Execute a rake command in a rails script."
  gem.summary       = "Execute a rake command in a rails script."
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
