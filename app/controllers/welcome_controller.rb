class WelcomeController < ApplicationController
	def index
	   render text: 'Thanks for sending a GET request with cURL!'
	end
end