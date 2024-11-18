$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "camaleon_robots_editor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "camaleon_robots_editor"
  s.version     = CamaleonRobotsEditor::VERSION
  s.authors     = ["superchel"]
  s.email       = ["for.oleg.mozolev@gmail.com"]
  s.homepage    = "https://siteon.com.ua"
  s.summary     = ": Summary of CamaleonRobotsEditor."
  s.description = "Simply robots.txt editor."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 7.0.4"

  s.add_development_dependency "sqlite3"
end
