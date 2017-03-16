require 'httparty'

require 'errors/zapier_api_error'

module ZapierEmbeddedApi
  # HTTP Api Client
  class ZapierClient
    include HTTParty

    base_uri 'https://zapier.com/partner/embed'
    headers 'Content-Type' => 'application/json'

    def initialize(api_token)
      @api_token = api_token
    end

    def templates(templates: nil, apps: nil)
      endpoint = "/zaps?key=#{@api_token}"

      endpoint += '&templates=' + templates.join(',') if templates
      endpoint += '&apps=' + apps.join(',') if apps

      response = self.class.get(endpoint, key: @api_token)

      process_response(response)
    end

    private

    def process_response(response)
      return response_error(response.code) unless response.code == 200
      JSON.parse(response.body)
    end

    def response_error(response_code)
      case response_code
      when 400
        raise ZapierApiError.new(response_code, 'The request is missing or was provided invalid parameters')
      when 401
        raise ZapierApiError.new(response_code, 'The key you provided is not valid')
      else
        raise ZapierApiError.new(response_code, 'Server error')
      end
    end
  end
end
