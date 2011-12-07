class ApplicationController < ActionController::Base
  include InputTextHelper
  include InputTextareaHelper
  protect_from_forgery
  
  helper :all
end
