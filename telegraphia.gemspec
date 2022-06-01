# frozen_string_literal: true

require_relative 'lib/telegraphia/version'

Gem::Specification.new do |spec|
  spec.name          = 'telegraphia'
  spec.version       = Telegraphia::VERSION
  spec.authors       = ['m3xq']
  spec.email         = ['z3w1l0q@protonmail.com']

  spec.summary       = 'Framework for developing telegram bots'
  spec.homepage      = 'https://github.com/m3xq/telegraphia'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 2.7.3'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/m3xq/telegraphia'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  # spec.executables << 'telegraphia'

  spec.add_dependency 'activesupport', '~> 7.0', '>= 7.0.3'
  spec.add_dependency 'thor', '~> 1.2', '>= 1.2.1'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
