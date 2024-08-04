class Document < ApplicationRecord
  belongs_to :aircraft
  DATA_TABLE = [
    { id: 1, path: '/uploads/template_1.pdf', documentable_type: 'Operator', documentable_id: 1 },
    { id: 2, path: '/uploads/template_2.pdf', documentable_type: 'Operator', documentable_id: 2 },
    { id: 3, path: '/uploads/template_3.pdf', documentable_type: 'Operator', documentable_id: 3 },
    { id: 4, path: '/uploads/template_4.pdf', documentable_type: 'Aircraft', documentable_id: 4 }
  ].freeze
end