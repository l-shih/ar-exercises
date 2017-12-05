class Store < ActiveRecord::Base
  has_many :employees
  validates :name, :length => { :minimum => 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :must_carry_an_apparel

  def must_carry_an_apparel
    if mens_apparel.present? == false && womens_apparel.present? == false
      errors.add(:mens_apparel, "no apparel selected")
      errors.add(:womens_apparel, "no apparel selected")
    end
  end

end