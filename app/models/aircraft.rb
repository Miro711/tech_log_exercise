class Aircraft < ApplicationRecord
	has_one :document, optional: true
  DATA_TABLE = [
    { id: 1, registration: 'G-FWED', operator_id: 1 },
    { id: 2, registration: 'G-UJML', operator_id: 1 },
    { id: 3, registration: 'K-PPOP', operator_id: 2 },
    { id: 4, registration: 'K-GTYH', operator_id: 2 },
    { id: 5, registration: 'T-DCXX', operator_id: 3 }
  ].freeze
end