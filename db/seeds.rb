puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."
Freebie.create(item_name: "F1", value:10, dev_id:1, company_id:3)
Freebie.create(item_name: "F2", value:11, dev_id:2, company_id:2)
Freebie.create(item_name: "F3", value:12, dev_id:3, company_id:1)
Freebie.create(item_name: "F4", value:13, dev_id:4, company_id:4)
Freebie.create(item_name: "F5", value:14, dev_id:1, company_id:4)
Freebie.create(item_name: "F6", value:15, dev_id:2, company_id:1)
Freebie.create(item_name: "F7", value:16, dev_id:3, company_id:2)
Freebie.create(item_name: "F8", value:17, dev_id:4, company_id:3)

puts "Seeding done!"
