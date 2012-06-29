# -*- encoding: utf-8 -*-
require File.expand_path('../lib/cached_logger/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["maedana"]
  gem.email         = ["maeda.na@gmail.com"]
  gem.description   = %q{This caches the outputed-log for using it later}
  gem.summary       = %q{This caches the outputed-log for using it later}
  gem.homepage      = "https://github.com/maedana/cached_logger"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "cached_logger"
  gem.require_paths = ["lib"]
  gem.version       = CachedLogger::VERSION
end
