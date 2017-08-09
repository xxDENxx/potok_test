class Company < ApplicationRecord
  has_one :loan, inverse_of: :company, :dependent => :destroy
  accepts_nested_attributes_for :loan
end
