class DataTemplateField
  include Mongoid::Document
  field :label, type: String
  field :tooltip, type: String
  field :required, type: Boolean
  field :input_name, type: String
  field :input_type, type: String
  field :input_properties, type: Hash
  field :input_colection, type: Hash
  embedded_in :data_template
end