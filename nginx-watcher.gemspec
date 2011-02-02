# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nginx-watcher/version"

Gem::Specification.new do |s|
  s.name        = "nginx-watcher"
  s.version     = Nginx::Watcher::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sean Cashin"]
  s.email       = ["scashin133@gmail.com"]
  s.homepage    = "http://github.com/scashin133/nginx-watcher"
  s.summary     = %q{Watches an nginx log and posts what it finds to a server}
  s.description = %q{Watches an nginx log and posts what it finds to a server}
  
  s.add_dependency(%q<eventmachine>, ["~> 0.12.10"])
  s.add_dependency(%q<em-http-request>, ["~> 0.3.0"])
  s.add_dependency(%q<eventmachine-tail>, ["~> 0.5.20110118081348"])
  s.add_dependency(%q<commander>, ["~> 4.0.3"])

  s.rubyforge_project = "nginx-watcher"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
