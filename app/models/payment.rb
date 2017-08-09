class Payment < ApplicationRecord
  belongs_to :loan, inverse_of: :payments
end
