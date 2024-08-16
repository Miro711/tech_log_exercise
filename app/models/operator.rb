class Operator < ApplicationRecord
  has_one :document, as: :documentable, dependent: :destroy
  has_many :aircrafts, dependent: :destroy

  # Add validation to ensure the presence of associated document
  validates :document, presence: true

  DATA_TABLE = [
    { id: 1, name: 'Operator 1' },
    { id: 2, name: 'Operator 2' },
    { id: 3, name: 'Operator 3' }
  ].freeze
  def self.all_records
  	Operator.all
  end

  def self.find_by_id(id)
  	Operator.find(id)
  end
  
  def all_aircrafts
  	self.aircrafts
  end
end