class String
  def fetch(headers = {})
    headers['User-Agent'] = 'GemVein Museum'
    require 'net/http'
    require 'net/https'

    uri = URI.parse(self)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = (uri.scheme == "https")
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(uri.request_uri, headers)

    response = http.request(request)
    response.body
  end
end