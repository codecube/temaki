class DataTemplate
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  embeds_many :data_template_fields
  has_and_belongs_to_many :data_collection
end