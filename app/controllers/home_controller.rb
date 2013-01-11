class HomeController < ApplicationController
  
  respond_to :js, :json, :html, :xml
  
  def welcome
    
  end
  
  def fetch_events
    @github_id = params[:github_id]
    @events = TestFetcher.fetch_events(@github_id)
    respond_with(@events)
  end
  
end
