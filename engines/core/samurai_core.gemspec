$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samurai/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "samurai_core"
  s.version     = Samurai::Core::VERSION
  s.authors     = ["Duy Nguyen"]
  s.email       = ["vox.e.povi@gmail.com"]
  s.homepage    = "http://example.com"
  s.summary     = "Samurai Core"
  s.description = "Samurai Core"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.7"
  s.add_dependency "devise", "~> 4.4.0"
  s.add_dependency "jquery-rails", "~> 4.3.0"
  s.add_dependency "cancancan", "~> 2.1.0"
  s.add_dependency "bootstrap-sass", "~> 3.3.7"
  s.add_dependency "autoprefixer-rails", "~> 9.8.6.3"
  s.add_dependency "sass-rails", "~> 5.0.1"
#  s.add_dependency "bootstrap", "~> 4.5.2"
end
