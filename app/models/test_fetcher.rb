require 'net/http'
class TestFetcher
  
  class << self
    
    def fetch_events(github_id)
      uri = URI.parse("https://api.github.com/users/#{github_id}/events")
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      resp = http.get(uri.request_uri)
      parse(resp)
    end
    
    def parse(resp)
      body = JSON.parse(resp.body)
      #Since commet is not matching reverting
      #body.collect{|b| b if GITHUB_EVENT_TYPE.include?(b['type']) }.compact
      body
    end
    
  end

end