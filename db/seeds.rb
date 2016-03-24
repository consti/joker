(0..31).each do |i|
  url = URI.parse("http://tambal.azurewebsites.net/joke/#{i}")
  req = Net::HTTP::Get.new(url.to_s)
  res = Net::HTTP.start(url.host, url.port) { |http|
    http.request(req)
  }
  Joke.create(content: JSON.parse(res.body)['joke'])
end
