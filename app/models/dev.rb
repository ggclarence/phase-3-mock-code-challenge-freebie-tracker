class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companys, through: :freebies

    def freebies_dev
        self.freebies.map { |freebies| freebies.item_name }
    end

    def companies_dev
        self.companys.map { |company| company.name}
    end

    def received_item_dev(item_name)
        self.freebies.any? {|freebies| freebies["item_name"] == "#{item_name}"}
    end

    def give_away(dev,freebie)
       have_item = received_item_dev(freebie)
       if (have_item == true)
        puts "hello" 

    end
        #remove item instance from dev that is giving item away 
        #only if dev owns it.
        #give that item instance to recieving dev

end

# dev.freebies.filter { |freebies| freebies["item_name"] == "#{freebie}"}

# def give_away(dev, freebie)
#     if self.recieved_one?(freebie.item_name)
#         freebie.update(dev_id: dev.id)
#     else
#         "Cannot give away something you dont own"
#     end
end
