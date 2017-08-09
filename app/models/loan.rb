class Loan < ApplicationRecord
  belongs_to :company, inverse_of: :loan
  has_many :payments, inverse_of: :loan, :dependent => :destroy
  accepts_nested_attributes_for :payments, reject_if: proc { |a| a[:status].blank? }
  after_create :calculate_overdrive
  
  def income_percent
    total_overdrive/sum/time*12
  end
  
  private
  def calculate_overdrive
    self.total_overdrive = 0.0
    payments.each do |p|
      case p.status
      when 'normal', 'all'
        self.total_overdrive += sum*base_percent/12.0
      else #:delay
        self.total_overdrive += sum*delay_percent/12.0
      end
    end
    self.save
  end
end
