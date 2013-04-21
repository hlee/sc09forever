class HomeController < ApplicationController
  def index
  	@classmates = Classmate.all
  end
end
