require 'operator'
require 'rails_helper'

RSpec.describe Operator, type: :model do
  let(:operator) { Operator.create(name: "Test Operator") }
  let(:aircraft1) { Aircraft.create(registration: "G-FFF", operator: operator) }
  let(:aircraft2) { Aircraft.create(registration: "G-CCC"operator: operator) }
  let(:document) { Document.create(path: "/uploads/operator_doc.pdf", documentable: operator) }

  it 'has access to the described_class' do
    expect { described_class }.not_to raise_error
  end

  describe ".all_records" do
    it "returns all operator records" do
      operator1 = Operator.create(name: "Operator 1")
      operator2 = Operator.create(name: "Operator 2")
      expect(Operator.all_records).to include(operator, operator1, operator2)
    end
  end

  describe ".find_by_id" do
    it "finds an operator by its ID" do
      found_operator = Operator.find_by_id(operator.id)
      expect(found_operator).to eq(operator)
    end
  end

  describe "#primary_document" do
    it "returns the operator's document" do
      expect(operator.primary_document).to eq(document)
    end
  end

  describe "#all_aircraft" do
    it "returns all aircraft associated with the operator" do
      expect(operator.all_aircraft).to include(aircraft1, aircraft2)
    end
  end
end
