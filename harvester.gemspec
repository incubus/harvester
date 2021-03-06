# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "harvester/version"

Gem::Specification.new do |s|
  s.name        = "harvester"
  s.version     = Harvester::VERSION
  s.authors     = ["Mark Abramov"]
  s.email       = ["markizko@gmail.com"]
  s.homepage    = "https://github.com/markiz/harvester"
  s.summary     = "DSL for extracting structured data from HTML."
  s.description = "DSL for extracting structured data from HTML."

  s.rubyforge_project = "harvester"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_development_dependency "chronic18n"
  s.add_runtime_dependency "nokogiri"
  s.add_runtime_dependency "addressable"
end
