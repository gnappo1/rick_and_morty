class API
    BASE_URL = "https://rickandmortyapi.com/api/"
    def call
        url = BASE_URL + "/character"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        formatted_resp = JSON.parse(response)
        #resp_2 = HTTParty.get(url) #httparty makes it quicker to get a nicely formatted response
        formatted_resp["results"].each do |char_hash|
            Character.new({name: char_hash["name"], status: char_hash["status"], gender: char_hash["gender"], species: char_hash["species"] })
        end
    end

end