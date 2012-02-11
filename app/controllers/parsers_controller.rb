class ParsersController < ApplicationController
  
  def markdown
    @markitup =  BlueCloth.new(params[:data]).to_html
    render :layout => false
  end
  
  def default
    @content = params[:data].html_safe
    render :layout => false
  end
end