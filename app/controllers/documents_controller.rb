
class DocumentsController < ApplicationController
  
  def index
    @collection = DataCollection.first(conditions: {name: params[:collection]})
    @documents = DataDocument.all(conditions: {data_collection_ids: @collection._id})
    
    
  end
  def show
      @collection = DataCollection.first(conditions: {name: params[:collection]})
      #@document = MONGO_DB[params[:collection]].find_one(:_id => BSON::ObjectId(params[:id]))
  end  

  def new
    # 1st choose document template
    # select document templates
    @collection = DataCollection.first(conditions: {name: params[:collection]})
    #@data_collection = MONGO_DB['data_collection'].find(:_id => params[:collection])
    
   
    @data_document = DataDocument.new
    #@templates = BSON::OrderedHash.new
    #@templates = data_collection
    
    
    #@templates = MONGO_DB['data_templates'].find();
    
    # 2nd render document template
    # this should be ajax....
    
    # 3rd submit document 
    
    # 4th save document in mongo db

  end
  
   def create
    @data_document = DataDocument.new(params)
    if @data_document.save
      redirect_to("/collections")
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      #render :action => "new"
    end
  end
  

end