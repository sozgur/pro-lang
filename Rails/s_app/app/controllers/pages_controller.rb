class PagesController < ApplicationController
	def index

		s=Typhoeus::Request.get("http://kureapi.herokuapp.com/json?cmd=get_episodes&episode_id=150866&order=id_desc&page=1&episode_type_id=1&auth=b48e34ad49209ff30e03dbaba30de063d10c198bf5ca2ae5d71b62025188a355&tid=1378077872")
		@a=JSON.parse(s.body)
		
	end
end
