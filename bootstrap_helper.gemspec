# -*- encoding: utf-8 -*-
require File.expand_path('../lib/bootstrap_helper/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["xdite"]
  gem.email         = ["xuite.joke@gmail.com"]
  gem.description   = %q{Twitter Bootstrap HTML Helper}
  gem.summary       = %q{Twitter Bootstrap HTML Helper}
  gem.homepage      = "https://github.com/xdite/bootstrap-helper"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "bootstrap_helper"
  gem.require_paths = ["lib"]
  gem.version       = BootstrapHelper::Rails::VERSION

  gem.add_dependency "railties", ">= 4.0.0"
  gem.add_dependency "thor",     "~> 0.14"
  gem.add_dependency "will_paginate", '>= 3.0.3'
  gem.add_development_dependency("rspec-rails")
  gem.add_development_dependency("capybara", ">= 0.4.0")
  gem.add_development_dependency("sqlite3")
  gem.add_development_dependency "bundler", ">= 1.3.0"
  gem.add_development_dependency "rails",   ">= 4.0.0"
end

