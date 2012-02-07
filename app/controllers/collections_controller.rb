class CollectionsController < ApplicationController
	@@items_per_page = 10
	
	def init
	 
    redirect_to("/collections")

  end

  def index
    
    @collections = DataCollection.all(sort: [[:created_at, :desc]]).page(params[:page]).per(@@items_per_page)
  end

  # This action uses POST parameters. They are most likely coming
  # from an HTML form which the user has submitted. The URL for
  # this RESTful request will be "/collection", and the data will be
  # sent as part of the request body.
  def create
    @collection = DataCollection.new(get_attribute_hash())
    if @collection.save
      redirect_to("/collections")
    else
      @data_templates = load_templates()
      flash[:error] = "There was a problem creating the Collection. It must have a title."
      render :action => "new"

    end
    
  end
  
  def new
    @data_templates = load_templates()
    @collection = DataCollection.new()
  end
  
  def edit
   @collection = load_collection()
   @data_templates = load_templates()
  end
  
  
  def update
    collection = load_collection()
    collection.update_attributes(get_attribute_hash())
    redirect_to("/collections")
  end
  
   def destroy
    collection = load_collection()
    data_documents = DataDocument.all(conditions: {data_collection_ids: params[:collection]})
    data_documents.destroy
    collection.destroy  
    redirect_to("/collections") 
  end
  
  private
  def load_collection
    DataCollection.first(conditions: {name: params[:collection]})
  end
  
  def load_templates
    DataTemplate.all
  end
  
  def get_attribute_hash
    {:name => params[:name], :title => params[:title],:description => params[:description], :data_template_ids => [params[:data_template_ids]]}
  end
  
end
