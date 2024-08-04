class Operator < ApplicationRecord
  has_one :document
  DATA_TABLE = [
    { id: 1, name: 'Operator 1' },
    { id: 2, name: 'Operator 2' },
    { id: 3, name: 'Operator 3' }
  ].freeze
end