class ApplicationController < ActionController::Base
  include InputTextHelper
  include InputTextareaHelper
  include InputCheckboxHelper
  include MarkupHelper
  protect_from_forgery
  
  helper :all
end
