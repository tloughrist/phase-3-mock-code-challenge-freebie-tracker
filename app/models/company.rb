class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie(dev, item_name, value)
        free = Freebie.new
        free.item_name = item_name
        free.value = value
        free.company_id = self.id
        free.dev_id = dev.id
        free.save
    end

    def self.oldest_company
        earliest = Company.minimum(:founding_year)
        Company.find_by(founding_year: earliest)
    end
end