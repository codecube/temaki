class DocumentsController < ApplicationController

  before_filter :load_collection
  def index
    @documents = DataDocument.all(conditions: {data_collection_ids: @collection._id}, sort: [[:created_at, :desc]])
  end

  def show

  end

  def new
    # 1st choose document template
    # select document templates

    @data_document = DataDocument.new

  # 2nd render document template
  # this should be ajax.... or not...

  # 3rd submit document

  # 4th save document in mongo db

  end
  
  def edit
    @document=DataDocument.find(params[:id])
    @data_template=DataTemplate.find(@document.data_template_id)
      
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
    
    ### error
    
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

  private
  def load_collection
    @collection = DataCollection.first(conditions: {name: params[:collection]})
  end

end