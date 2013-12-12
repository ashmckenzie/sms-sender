# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sms_sender/version'

Gem::Specification.new do |spec|
  spec.name          = "sms_sender"
  spec.version       = SmsSender::VERSION
  spec.authors       = ["Ash McKenzie"]
  spec.email         = ["ash@greenworm.com.au"]
  spec.description   = %q{Send SMS's through Twilio}
  spec.summary       = %q{Send SMS's through Twilio}
  spec.homepage      = "https://github.com/ashmckenzie/sms-sender"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "twilio", "~> 3.1"
  spec.add_runtime_dependency "clamp", "~> 0.6"
  spec.add_runtime_dependency "hashie", "~> 2.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
