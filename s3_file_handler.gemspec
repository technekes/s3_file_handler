# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 's3_file_handler/version'

Gem::Specification.new do |spec|
  spec.name          = "s3_file_handler"
  spec.version       = S3FileHandler::VERSION
  spec.authors       = ["jfinney122"]
  spec.email         = ["james.finney@technekes.com"]

  spec.summary       = 'Gem for interacting with S3 files'
  spec.description   = 'Allows for downloading or streaming a file out of S3'
  spec.homepage      = 'https://github.com/jfinney122/s3_file_handler'

  # # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_runtime_dependency "aws-sdk", "~> 2"
end
