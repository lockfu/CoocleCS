# -*- encoding: utf-8 -*-
# stub: paper_trail 8.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "paper_trail"
  s.version = "8.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Andy Stewart", "Ben Atkins", "Jared Beck"]
  s.date = "2017-12-22"
  s.description = "Track changes to your models, for auditing or versioning. See how a model looked\nat any stage in its lifecycle, revert it to any version, or restore it after it\nhas been destroyed.\n"
  s.email = "batkinz@gmail.com"
  s.homepage = "https://github.com/airblade/paper_trail"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.0")
  s.rubygems_version = "2.5.1"
  s.summary = "Track changes to your models."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, ["< 5.2", ">= 4.2"])
      s.add_runtime_dependency(%q<request_store>, ["~> 1.1"])
      s.add_development_dependency(%q<appraisal>, ["~> 2.2"])
      s.add_development_dependency(%q<byebug>, ["~> 9.1"])
      s.add_development_dependency(%q<database_cleaner>, ["~> 1.6"])
      s.add_development_dependency(%q<ffaker>, ["~> 2.7"])
      s.add_development_dependency(%q<generator_spec>, ["~> 0.9.4"])
      s.add_development_dependency(%q<mysql2>, ["~> 0.4.10"])
      s.add_development_dependency(%q<pg>, ["~> 0.21.0"])
      s.add_development_dependency(%q<rack-test>, ["< 0.9", ">= 0.6.3"])
      s.add_development_dependency(%q<rake>, ["~> 12.3"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 3.7.2"])
      s.add_development_dependency(%q<rubocop>, ["~> 0.51.0"])
      s.add_development_dependency(%q<rubocop-rspec>, ["~> 1.19.0"])
      s.add_development_dependency(%q<sqlite3>, ["~> 1.3"])
      s.add_development_dependency(%q<timecop>, ["~> 0.9.1"])
    else
      s.add_dependency(%q<activerecord>, ["< 5.2", ">= 4.2"])
      s.add_dependency(%q<request_store>, ["~> 1.1"])
      s.add_dependency(%q<appraisal>, ["~> 2.2"])
      s.add_dependency(%q<byebug>, ["~> 9.1"])
      s.add_dependency(%q<database_cleaner>, ["~> 1.6"])
      s.add_dependency(%q<ffaker>, ["~> 2.7"])
      s.add_dependency(%q<generator_spec>, ["~> 0.9.4"])
      s.add_dependency(%q<mysql2>, ["~> 0.4.10"])
      s.add_dependency(%q<pg>, ["~> 0.21.0"])
      s.add_dependency(%q<rack-test>, ["< 0.9", ">= 0.6.3"])
      s.add_dependency(%q<rake>, ["~> 12.3"])
      s.add_dependency(%q<rspec-rails>, ["~> 3.7.2"])
      s.add_dependency(%q<rubocop>, ["~> 0.51.0"])
      s.add_dependency(%q<rubocop-rspec>, ["~> 1.19.0"])
      s.add_dependency(%q<sqlite3>, ["~> 1.3"])
      s.add_dependency(%q<timecop>, ["~> 0.9.1"])
    end
  else
    s.add_dependency(%q<activerecord>, ["< 5.2", ">= 4.2"])
    s.add_dependency(%q<request_store>, ["~> 1.1"])
    s.add_dependency(%q<appraisal>, ["~> 2.2"])
    s.add_dependency(%q<byebug>, ["~> 9.1"])
    s.add_dependency(%q<database_cleaner>, ["~> 1.6"])
    s.add_dependency(%q<ffaker>, ["~> 2.7"])
    s.add_dependency(%q<generator_spec>, ["~> 0.9.4"])
    s.add_dependency(%q<mysql2>, ["~> 0.4.10"])
    s.add_dependency(%q<pg>, ["~> 0.21.0"])
    s.add_dependency(%q<rack-test>, ["< 0.9", ">= 0.6.3"])
    s.add_dependency(%q<rake>, ["~> 12.3"])
    s.add_dependency(%q<rspec-rails>, ["~> 3.7.2"])
    s.add_dependency(%q<rubocop>, ["~> 0.51.0"])
    s.add_dependency(%q<rubocop-rspec>, ["~> 1.19.0"])
    s.add_dependency(%q<sqlite3>, ["~> 1.3"])
    s.add_dependency(%q<timecop>, ["~> 0.9.1"])
  end
end
