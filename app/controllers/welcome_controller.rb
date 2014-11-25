class WelcomeController < ApplicationController
	def index
	   render text: "#{params} !!!! #{request}"
	end
end