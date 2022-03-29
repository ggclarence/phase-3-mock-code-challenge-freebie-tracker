class Company < ActiveRecord::Base
  has_many :freebie
  has_many :dev, through: :freebie

  def give_freebie(dev, item_name, value)
    Freebie.creates(item_name: item_name, value: value, dev: dev, company: self)
  end

  def self.oldest_company
    Company.all.order(:founding_year).first
  end

end
