# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/security/private_ca/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-security-private_ca"
  gem.version       = Google::Cloud::Security::PrivateCA::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Certificate Authority Service is a highly available, scalable Google Cloud service that enables you to simplify, automate, and customize the deployment, management, and security of private certificate authorities (CA)."
  gem.summary       = "API Client library for the Certificate Authority Service API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.5"

  gem.add_dependency "google-cloud-core", "~> 1.6"
  gem.add_dependency "google-cloud-security-private_ca-v1", ">= 0.0", "< 2.a"
  gem.add_dependency "google-cloud-security-private_ca-v1beta1", ">= 0.0", "< 2.a"

  gem.add_development_dependency "google-style", "~> 1.25.1"
  gem.add_development_dependency "minitest", "~> 5.14"
  gem.add_development_dependency "minitest-focus", "~> 1.1"
  gem.add_development_dependency "minitest-rg", "~> 5.2"
  gem.add_development_dependency "rake", ">= 12.0"
  gem.add_development_dependency "redcarpet", "~> 3.0"
  gem.add_development_dependency "simplecov", "~> 0.9"
  gem.add_development_dependency "yard", "~> 0.9"
end
