class ApplicationController < ActionController::Base
  include InputTextHelper
  include InputTextareaHelper
  include InputCheckboxHelper
  protect_from_forgery
  
  helper :all
end
