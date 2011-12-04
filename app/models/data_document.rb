class DataDocument
  include Mongoid::Document
  has_and_belongs_to_many :data_collection
  belongs_to :data_template
end