# coding: utf-8
$:.push File.expand_path("../lib", __FILE__)

require "alchemy/user_manual/version"

Gem::Specification.new do |spec|
  spec.name          = "alchemy-usermanual"
  spec.version       = Alchemy::UserManual::VERSION
  spec.authors       = ["Robin Böning"]
  spec.email         = ["rb@magiclabs.de"]
  spec.description   = "This gem adds a user manual module to your Alchemy CMS driven application."
  spec.summary       = "This gem adds a user manual module to your Alchemy CMS driven application."
  spec.homepage      = "http://magiclabs.de"
  spec.license       = "BSD New"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})

  spec.add_dependency "alchemy_cms", "~> 3.0"
  spec.add_dependency "redcarpet"
  spec.add_dependency "github-markdown", "~> 0.6.3"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec-rails", "~> 2.0"
  spec.add_development_dependency "factory_girl_rails"
end
