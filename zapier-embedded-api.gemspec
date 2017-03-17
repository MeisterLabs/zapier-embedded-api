# frozen_string_literal: true

$LOAD_PATH.push(File.expand_path('../lib', __FILE__))
require 'zapier_embedded_api/version'

Gem::Specification.new do |spec|
  spec.name        = 'zapier-embedded-api'
  spec.version     = ZapierEmbeddedApi::VERSION
  spec.summary     = 'Zapier Embedded API'
  spec.description = 'A simple gem that allows access to the Zapier Embedded API'
  spec.license     = 'MIT'

  spec.files = %w(
    lib/zapier_embedded_api.rb
    lib/client/zapier_client.rb
    lib/errors/zapier_api_error.rb
    lib/zapier_embedded_api/version.rb
  )
  spec.require_path = 'lib'

  spec.required_ruby_version = '>= 2.3'

  # dependencies
  spec.add_dependency('httparty', '~> 0.13')

  spec.authors  = 'Andrei Moldovan'
  spec.email    = 'andrei@meisterlabs.com'
  spec.homepage = 'https://www.meistertask.com'
end
