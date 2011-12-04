class DataCollection
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  has_and_belongs_to_many :data_templates
end