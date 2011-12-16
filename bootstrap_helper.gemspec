# -*- encoding: utf-8 -*-
require File.expand_path('../lib/bootstrap_helper/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["xdite"]
  gem.email         = ["xuite.joke@gmail.com"]
  gem.description   = %q{Twitter Bootstrap HTML Helper}
  gem.summary       = %q{Twitter Bootstrap HTML Helper}
  gem.homepage      = "https://github.com/xdite/bootstrap_helper"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "bootstrap_helper"
  gem.require_paths = ["lib"]
  gem.version       = "1.4.1"

  gem.add_dependency "railties", "~> 3.0"
  gem.add_dependency "thor",     "~> 0.14"
  gem.add_development_dependency "bundler", ">= 1.0.0"
  gem.add_development_dependency "rails",   "~> 3.0"
end

