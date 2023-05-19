module Emailvalidation
  class Endpoints

    attr_writer :apikey

    def initialize(options = {})
      @apikey = options[:apikey] || Emailvalidation.configuration.apikey
    end

    def status()
      @result = call_api('status')
    end

    def validate(email, catch_all = 0)
      @result = call_api(sprintf('info/?email=%s&catch_all=%s', email, catch_all))
    end

    def call_api(route)
      begin
        @response = RestClient.get "#{Emailvalidation::BASE_URL}#{route}&apikey=#{@apikey}", { 'Accept' => 'application/json' }
      rescue RestClient::ExceptionWithResponse => e
        @data = e.response
      end
    end
  end
end
