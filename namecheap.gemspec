# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{namecheap}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sebastian Johnsson"]
  s.date = %q{2011-08-17}
  s.description = %q{Wrapper for Namecheap API}
  s.email = %q{sebastian@agiley.se}
  s.extra_rdoc_files = [
    "README.textile"
  ]
  s.files = [
    "Gemfile",
    "README.textile",
    "Rakefile",
    "VERSION",
    "lib/generators/namecheap/namecheap_generator.rb",
    "lib/generators/templates/namecheap.yml",
    "lib/namecheap.rb",
    "lib/namecheap/client.rb",
    "lib/namecheap/domain_check.rb",
    "lib/namecheap/domain_check_response.rb",
    "lib/namecheap/nil_response.rb",
    "lib/namecheap/railtie.rb",
    "lib/namecheap/response.rb",
    "lib/tasks/namecheap_tasks.rake",
    "namecheap.gemspec",
    "spec/namecheap/namecheap_domain_check_response_spec.rb",
    "spec/namecheap/namecheap_response_spec.rb",
    "spec/namecheap/namecheap_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/Agiley/namecheap}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Wrapper for Namecheap API}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 0"])
      s.add_runtime_dependency(%q<httparty>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 0"])
      s.add_dependency(%q<httparty>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 0"])
    s.add_dependency(%q<httparty>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end
