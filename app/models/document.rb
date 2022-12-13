class Document < ApplicationRecord
  DOC_TYPES = ['Personal ID','Marksheet','Photo ID','Address Proof','Others'].freeze
  
  belongs_to :employee
  validates :name, :doc_type, presence: true
  has_one_attached :image
end
 