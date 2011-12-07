class DocumentsController < ApplicationController
  def index
    @collection = DataCollection.first(conditions: {name: params[:collection]})
    @documents = DataDocument.all(conditions: {data_collection_ids: @collection._id}, sort: [[:created_at, :desc]])

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
    data_template = DataTemplate.find(params[:data_template_id])

    @data_document = DataDocument.new(prepare_insert(data_template.data_template_fields, params))
    data_collections = DataCollection.find(params[:data_collection_ids])
     data_collections.each do |data_collection|
     
     data_collection.inc(:count, 1)
     end
    if @data_document.save
    redirect_to("/collection/"+params[:collection])
    else
    # This line overrides the default rendering behavior, which
    # would have been to render the "create" view.
    #render :action => "new"
    end
  end

  def prepare_insert (data_template_fields, params)
    hash = Hash.new
    data_template_fields.each do |field|
      hash = send(field.input_type+'_insert', hash, field.input_name, params[field.input_name])
    end

    hash['data_template_id'] = params['data_template_id'];
    hash['data_collection_ids'] = params['data_collection_ids'];
    return hash
  end
  
  def prepare_form
    
  end

end