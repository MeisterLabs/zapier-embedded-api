# Zapier Embedded API

This gem provides a Ruby client for the Zapier Embedded API.

## Installation
Add this to your Gemfile:

`gem 'zapier-embedded-api', require: 'zapier_embedded_api'`

## Usage

### Client initialization

`client = ZapeirEmbeddedApi.get_client(app_id: <app_id>, api_token: <your api key>)`
- `app_id` your Zapier app id - needed in order to filter out your app from the response
- `api_token` your Zapier Ambedded API token

### Client methods

#### `[apps, templates] = templates(apps:, templates:)`
Returns all the apps and templates linked to your app. The `apps` and `templates` parameters are optional.
