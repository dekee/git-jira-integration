require "faraday_middleware"
require "faraday"

module Jira 

	def setup
		begin 
			@conn = Faraday.new(ENV['jira_url']) do |faraday|
				faraday.request :url_encoded
								
				faraday.response :json
				faraday.use Faraday::Request::BasicAuthentication, ENV['jira_username'], ENV['jira_password']
				faraday.adapter Faraday.default_adapter

			end
		rescue Faraday::Error::ClientError => e
			puts ("problem connectiong to the client: #{e}")
			exit BAD_CONNECTION
		end
	end
end