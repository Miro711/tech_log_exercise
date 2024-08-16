require 'document'
require 'rails_helper'

RSpec.describe Document, type: :model do
  let(:operator) { Operator.create(name: "Test Operator") }
  let(:aircraft) { Aircraft.create(registration: "G-AAA", operator: operator) }
  let(:document1) { Document.create(path: "/uploads/test1.pdf", documentable: operator) }
  let(:document2) { Document.create(path: "/uploads/test2.pdf", documentable: aircraft) }

  it 'has access to the described_class' do
    expect { described_class }.not_to raise_error
  end

  describe ".all_documents" do
    it "returns all document records" do
      document3 = Document.create(path: "/uploads/test3.pdf", documentable: aircraft)
      expect(Document.all_documents).to include(document1, document2, document3)
    end
  end

  describe ".find_by_id" do
    it "finds a document by its ID" do
      found_document = Document.find_by_id(document1.id)
      expect(found_document).to eq(document1)
    end
  end

  describe "#belongs_to_record" do
    it "returns the record that the document belongs to" do
      expect(document1.belongs_to_record).to eq(operator)
      expect(document2.belongs_to_record).to eq(aircraft)
    end
  end
end
