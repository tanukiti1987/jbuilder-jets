lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jbuilder_jets/version"

Gem::Specification.new do |spec|
  github_repo        = "https://github.com/tanukiti1987/jbuilder-jets"
  spec.name          = "jbuilder-jets"
  spec.version       = JbuilderJets::VERSION
  spec.authors       = ["Ryusuke Sekiguchi"]
  spec.email         = ["tanukiti1987@gmail.com"]

  spec.summary       = "This is a gem to use JBuilder with jets."
  spec.description   = "This is a gem to use JBuilder with jets."
  spec.homepage      = github_repo
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = github_repo
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "jbuilder", ">= 2.10"

  spec.add_development_dependency "bundler", ">= 1.17.3"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
