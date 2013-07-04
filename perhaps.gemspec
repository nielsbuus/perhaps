# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'perhaps/version'

Gem::Specification.new do |spec|
  spec.name          = "perhaps"
  spec.version       = Perhaps::VERSION
  spec.authors       = ["Niels Buus"]
  spec.email         = ["nielsbuus@gmail.com"]
  spec.description   = %q{Tired of if and else? Try maybe.}
  spec.summary       = %q{This gem extends the kernel with a maybe method to make your control flow out of control.}
  spec.homepage      = "https://github.com/nielsbuus/perhaps"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec"
end
