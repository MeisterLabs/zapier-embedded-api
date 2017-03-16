# Zapier Embedded API - entry point
module ZapierEmbeddedApi
  def self.get_client(api_token)
    ZapierClient.new(api_token)
  end
end

require 'client/zapier_client'
