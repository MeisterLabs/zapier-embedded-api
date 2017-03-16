# Zapier Embedded API

This gem provides a Ruby client for the Zapier Embedded API.

## Installation
Add this to your Gemfile:

`gem 'zapier-embedded-api', require: 'zapier_embedded_api'`

## Usage

### Client initialization

`client = ZapeirEmbeddedApi.get_client(<your api key>)`

### Client methods

#### `templates(apps:, templates:)`
Return all templates linked to your app. The `apps` and `templates` parameters are optional.
