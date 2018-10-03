lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'digital_nsw_template/version'

Gem::Specification.new do |s|
  s.name          = "digital_nsw_template"
  s.version       = DigitalNswTemplate::VERSION
  s.authors       = ['NSW Department of Finance, Services and Innovation']
  s.summary       = 'Base stylesheets for the Digital NSW template'
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'sass', '>= 3.5.2'
  s.add_runtime_dependency 'sprockets', '>= 3.7.0'
  s.add_runtime_dependency 'bootstrap', '~> 4.0'

  s.files = `git ls-files`.split("\n")
end
