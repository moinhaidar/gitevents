class HomeController < ApplicationController
  
  def welcome
    
  end
  
  def fetch_events
    if request.xhr?
      @github_id = 'Blah'
      @events = []
    else
      @github_id = params[:github_id]
      @events = TestFetcher.fetch_events(@github_id)
    end
  end
  
end
