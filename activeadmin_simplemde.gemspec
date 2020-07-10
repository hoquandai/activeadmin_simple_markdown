
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_admin/simplemde_editor/version'

Gem::Specification.new do |spec|
  spec.name          = 'activeadmin_simplemde'
  spec.version       = ActiveAdmin::SimplemdeEditor::VERSION
  spec.authors       = ['ho.dai']
  spec.email         = ['hoquandai@gmail.com']

  spec.summary       = 'SimpleMde editor for ActiveAdmin'
  spec.description   = 'An Active Admin plugin to use SimpleMde Editor'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'activeadmin', '2.7.0'
  spec.add_development_dependency "bundler", "1.17.2"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
