class CollectionsController < ApplicationController
	def init
    redirect_to("/collections")

  end

  def index
    @collections = DataCollection.all(sort: [[:created_at, :desc]])
  end

  # This action uses POST parameters. They are most likely coming
  # from an HTML form which the user has submitted. The URL for
  # this RESTful request will be "/collection", and the data will be
  # sent as part of the request body.
  def create
    @collection = DataCollection.new(get_attribute_hash())
    @collection.save
    redirect_to("/collections")
  end
  
  def new
    @data_templates = load_templates()
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
    {:name => params[:name], :title => params[:title],:description => params[:description], :count => 0 , :data_template_ids => [params[:data_template_ids]]}
  end
  
end
