
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "adminlte3/rails/version"

Gem::Specification.new do |spec|
  spec.name          = "adminlte3-rails"
  spec.version       = "0.2.0"
  spec.authors       = ["mirko314"]
  spec.email         = ["mirko.budszuhn@gmail.com"]

  spec.summary       = "Bundles AdminLTE3 with the AssetPipeline"
  spec.description   = "Bundles AdminLTE3 with the AssetPipeline"
  spec.homepage      = "https://github.com/mirko314/adminlte3-rails/"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "rails"
  spec.add_dependency "sass"
  spec.add_dependency "sass-rails"
  spec.add_dependency "jquery-rails"
  spec.add_dependency "bootstrap"

end
