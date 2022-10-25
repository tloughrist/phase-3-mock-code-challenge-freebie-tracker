class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        item = self.freebies.find_by(item_name: item_name)
        item ? true : false
    end

    def give_away(dev, freebie)
        if(self.freebies.find_by(item_name: freebie.item_name))
            freebie.dev_id = dev.id
            freebie.save
        else
            puts "Not yours to give"
        end
    end
end
