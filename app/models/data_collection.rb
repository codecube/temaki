class DataCollection
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :count, type: Integer
  has_and_belongs_to_many :data_templates
end