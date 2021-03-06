$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "railhash/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "railhash"
  s.version     = RailHash::VERSION
  s.authors     = ["bukk530"]
  s.email       = [""]
  s.homepage    = "https://github.com/bukk530/railhash"
  s.summary     = "Railhash simplifies data and password hashing"
  s.description = "Railhash simplifies data and password hashing"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"
  
end
