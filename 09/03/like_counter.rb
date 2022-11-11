require 'open-uri'
require 'json'

class FbShareCounter
  BASE_URL = 'http://graph.facebook.com/?id='

  def initialize(target_url)
    # 文字列の結合は式展開のほうがよい（数値やnilの場合に落ちるため）
    # @request_url = BASE_URL + target_url
    @request_url = "#{BASE_URL}#{target_url}"
  end

  def count
    response = URI.open(@request_url).read
    hash = JSON.parse(response)
    hash['share']['share_count']
  end
end

counter = FbShareCounter.new('http://gihyo.jp')
p counter.count
