class ApplicationController < ActionController::Base
  protect_from_forgery

  include BootstrapHelper::Breadcrumb
  
end
