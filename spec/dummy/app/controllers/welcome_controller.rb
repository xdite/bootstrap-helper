class WelcomeController < ApplicationController
  
  def index
    drop_breadcrumb("hello")
  end
end
