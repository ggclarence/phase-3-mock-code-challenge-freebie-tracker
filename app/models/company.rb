class Company < ActiveRecord::Base
    has_many :freebie
    has_many :devs, through: :freebies


    def freebies_company
        self.freebies.map { |freebies| freebies.item_name }
    end

    def freebies_dev
        self.devs.map { |freebies| freebies.name }
    end

    def give_freebie(dev, item_name, value)
        Freebie.create(value:value, item_name:item_name,dev_id:dev.id,company_id:self.id)
    end

    def self.oldest_company
        self.all.order(:founding_year).first
    end
end
