class DataCollection
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :name, type: String
  field :description, type: String
  field :count, type: Integer, default: 0
  has_and_belongs_to_many :data_templates
  validates_presence_of :name, message: 'No Way'
  validates_presence_of :title
  index :name, unique: true
end