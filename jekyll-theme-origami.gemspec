# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-origami"
  spec.version       = "0.1.0"
  spec.authors       = ["Origami"]
  spec.email         = ["origami.support@ft.com"]

  spec.summary       = "A Jekyll theme which uses Origami's o-layout"
  spec.homepage      = "https://origami.ft.com/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.7"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.0"
end
