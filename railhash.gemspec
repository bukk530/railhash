$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "railhash/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "railhash"
  s.version     = Railhash::VERSION
  s.authors     = ["bukk530"]
  s.email       = [""]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Railhash."
  s.description = "TODO: Description of Railhash."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.8"
  
end
