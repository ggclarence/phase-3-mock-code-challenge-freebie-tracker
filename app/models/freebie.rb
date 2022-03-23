class Freebie < ActiveRecord::Base
    belongs_to :dev
    belongs_to :company

    def dev_freebie
        self.dev
    end

    def company_freebie
        self.company
    end

    def print_details
        puts "#{dev_freebie.name} owns a #{self.item_name} from #{company_freebie.name}."
    end

end
