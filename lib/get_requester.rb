# Write your code here

require 'open-uri'
require 'net/http'
require 'json'

class GetRequester

    def initialize(string)
        @string = string
    end 

    def get_response_body
        #sends a GET req to the url passed in on initial.
        #return the body of the response
        uri = URI.parse(@string) 
        # pass the srt. arg
        response = Net::HTTP.get_response(uri) # assigns response vari. 
        response.body
    end

    def parse_json
        JSON.parse(get_response_body) # uses met. to send a req. 
        # return a Ruby array or hash made up of data converted from the resp. req.
    end

end