$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tablator/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tablator"
  s.version     = Tablator::VERSION
  s.authors     = ["Robert Ross"]
  s.email       = ["robert@creativequeries.com"]
  s.homepage    = "bobbytables.github.com/tablator"
  s.summary     = "Tablator is a Rails helper for generating tables easily."
  s.description = "Create tablular data easily with a symantic DSL."
  s.files       = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec", "~> 2.9"
  s.add_development_dependency "pry"
end
