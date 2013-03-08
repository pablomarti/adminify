$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "adminify/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "adminify"
  s.version     = Adminify::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Adminify."
  s.description = "TODO: Description of Adminify."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.12"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "mysql2"
end
