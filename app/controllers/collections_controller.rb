class CollectionsController < ApplicationController
	def init
    redirect_to("/collections")

  end

  def index


		@collections = DataCollection.all
    
  end

  # This action uses POST parameters. They are most likely coming
  # from an HTML form which the user has submitted. The URL for
  # this RESTful request will be "/collection", and the data will be
  # sent as part of the request body.
  def create
    @collection = DataCollection.new(:name => params[:name], :title => params[:title], :data_template_ids => [params[:data_template_ids]])
    
    
    
    if @collection.save
      redirect_to("/collections")
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render :action => "new"
    end
  end
  
  def new
    @data_templates = DataTemplate.all
  end


end
