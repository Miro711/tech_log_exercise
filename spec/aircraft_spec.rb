require 'aircraft'
require 'rails_helper'

RSpec.describe Aircraft, type: :model do
  let(:operator) { Operator.create(name: "Test Operator") }
  let(:aircraft) { Aircraft.create(registration: "G-FWED", operator: operator) }
  let(:document) { Document.create(path: "/uploads/test.pdf", documentable: aircraft) }

  it 'has access to the described_class' do
    expect { described_class }.not_to raise_error
  end

  describe ".all_records" do
    it "returns all aircraft records" do
      aircraft1 = Aircraft.create(operator: operator)
      aircraft2 = Aircraft.create(operator: operator)
      expect(Aircraft.all_records).to include(aircraft, aircraft1, aircraft2)
    end
  end

  describe ".find_by_id" do
    it "finds an aircraft by its ID" do
      found_aircraft = Aircraft.find_by_id(aircraft.id)
      expect(found_aircraft).to eq(aircraft)
    end
  end

  describe "#operator_record" do
    it "fetches the operator associated with the aircraft" do
      expect(aircraft.operator_record).to eq(operator)
    end
  end

  describe ".primary_document" do
    context "when aircraft has its own document" do
      it "returns the aircraft's document" do
        expect(Aircraft.primary_document(aircraft.id)).to eq(document)
      end
    end

    context "when aircraft does not have its own document" do
      it "returns the operator's document" do
        operator_doc = Document.create(path: "/uploads/operator_doc.pdf", documentable: operator)
        aircraft_without_doc = Aircraft.create(operator: operator)
        expect(Aircraft.primary_document(aircraft_without_doc.id)).to eq(operator_doc)
      end
    end
  end
end
