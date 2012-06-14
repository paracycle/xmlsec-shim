# -*- encoding: utf-8 -*-
require File.expand_path('../lib/xmlsec-shim/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ufuk Kayserilioglu"]
  gem.email         = ["ufuk@enkuba.com"]
  gem.description   = "A shim library for xmlsec1"
  gem.summary       = "A shim library for xmlsec1"
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "xmlsec-shim"
  gem.require_paths = ["lib"]
  gem.extensions    = ['ext/xmlsec/extconf.rb']
  gem.version       = Xmlsec::Shim::VERSION
end
