# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ruby_reddit_api"
  s.version = "0.2.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["James Cook"]
  s.date = "2010-11-20"
  s.description = "Wraps many reddit API functions such as submission and comments browsing, voting, messaging, friending, and more."
  s.email = ["jamecook@gmail.com"]
  s.homepage = "http://github.com/jamescook/RubyRedditAPI"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubyforge_project = "ruby_reddit_api"
  s.rubygems_version = "1.8.23"
  s.summary = "Wrapper for reddit API"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, [">= 0"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<httparty>, [">= 0"])
      s.add_dependency(%q<cucumber>, [">= 0"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0"])
    s.add_dependency(%q<cucumber>, [">= 0"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end
