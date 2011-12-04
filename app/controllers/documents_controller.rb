
class DocumentsController < ApplicationController
  
  def index
    @collection = DataCollection.first(conditions: {name: params[:collection]})
    @documents = DataDocument.where(data_collection: @collection)
    
    
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
    
   @templates=@data_collection.as_json
    
    #@templates = BSON::OrderedHash.new
    #@templates = data_collection
    
    
    #@templates = MONGO_DB['data_templates'].find();
    
    # 2nd render document template
    # this should be ajax....
    
    # 3rd submit document 
    
    # 4th save document in mongo db

  end

end