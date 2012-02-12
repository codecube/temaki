class ApplicationController < ActionController::Base
  include InputTextHelper
  include InputTextareaHelper
  include InputCheckboxHelper
  include MarkupHelper
  include SelectHelper
  protect_from_forgery
  
  helper :all
end
