module ZapierEmbeddedApi
  # Custom error class
  class ZapierApiError < StandardError
    def initialize(status, message)
      @status = status
      super(message)
    end
  end
end
