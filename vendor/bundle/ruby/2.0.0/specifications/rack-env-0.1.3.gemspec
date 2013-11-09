# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rack-env"
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kohei Hasegawa"]
  s.date = "2012-10-09"
  s.description = "load environment variables from .env or specified file."
  s.email = ["ameutau@gmail.com"]
  s.homepage = "http://github.com/banyan/rack-env"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.2"
  s.summary = "load environment variables from .env or specified file."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.11.0"])
      s.add_development_dependency(%q<rake>, [">= 0.9.2.2"])
      s.add_development_dependency(%q<rack>, [">= 1.4.1"])
      s.add_development_dependency(%q<rack-test>, [">= 0.6.1"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.11.0"])
      s.add_dependency(%q<rake>, [">= 0.9.2.2"])
      s.add_dependency(%q<rack>, [">= 1.4.1"])
      s.add_dependency(%q<rack-test>, [">= 0.6.1"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.11.0"])
    s.add_dependency(%q<rake>, [">= 0.9.2.2"])
    s.add_dependency(%q<rack>, [">= 1.4.1"])
    s.add_dependency(%q<rack-test>, [">= 0.6.1"])
  end
end
