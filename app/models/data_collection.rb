class DataCollection
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :description, type: String
  field :count, type: Integer, default: 0
  has_and_belongs_to_many :data_templates
end