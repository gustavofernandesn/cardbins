# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cardbins/version"

Gem::Specification.new do |spec|
  spec.name          = "cardbins"
  spec.version       = Cardbins::VERSION
  spec.authors       = ["Gustavo Fernandes"]
  spec.email         = ["gustavofernandesnn@gmail.com"]
  spec.licenses      = ["MIT"]
  spec.summary       = "Compare the card's bin range and return the card's brand name."
  spec.homepage      = "https://github.com/gustavofernandesn"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = Dir.glob("{bin,lib}/**/*") + %w(README.md)
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "nokogiri", "~> 1.8"
end
