$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "my-feedback-form/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "my-feedback-form"
  s.version     = MyFeedbackForm::VERSION
  s.authors     = ["Guilherme Goncalves"]
  s.email       = ["guilherme@webgoal.com.br"]
  s.homepage    = "https://github.com/guigonc/my-feedback-form"
  s.summary     = "Rails gem to provide feedback form for Rails 3 apps."
  s.description = "Rails gem to provide feedback form for Rails 3 apps."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.0"
  s.add_dependency "jquery-rails"
  s.add_dependency "twitter-bootstrap-rails"

  s.add_development_dependency "sqlite3"
end
