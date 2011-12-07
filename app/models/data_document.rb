class DataDocument
  include Mongoid::Document
  include Mongoid::Timestamps
  has_and_belongs_to_many :data_collections
  belongs_to :data_template
end