class DataDocument
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :description, type: String
  has_and_belongs_to_many :data_collections
  belongs_to :data_template
  validates_presence_of :title
end