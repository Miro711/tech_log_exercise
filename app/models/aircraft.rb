class Aircraft < ApplicationRecord
	has_one :document, as: :documentable, optional: true
        belongs_to :operator
  DATA_TABLE = [
    { id: 1, registration: 'G-FWED', operator_id: 1 },
    { id: 2, registration: 'G-UJML', operator_id: 1 },
    { id: 3, registration: 'K-PPOP', operator_id: 2 },
    { id: 4, registration: 'K-GTYH', operator_id: 2 },
    { id: 5, registration: 'T-DCXX', operator_id: 3 }
  ].freeze

	def self.all_aircrafts
		Aircraft.all
	end

	def self.find_aircraft_by_id(id)
		Aircraft.find(id)
	end	

	def fetch_operator
		self.operator
	end

	def fetch_document(aircraft_id)
		aircraft = Aircraft.find_aircraft_by_id(aircraft_id)
		operator = aircraft.fetch_operator
                if aircraft.document
			aircraft.document
		else
			operator.document
		end
	end
end