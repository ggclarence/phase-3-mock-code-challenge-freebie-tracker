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

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

Freebie.create(value:5, item_name:"T shirt", dev_id:1,company_id:1)
Freebie.create(value:1, item_name:"Hat", dev_id:2,company_id:1)
Freebie.create(value:3, item_name:"Shoe", dev_id:2,company_id:1)
Freebie.create(value:1, item_name:"Sticker", dev_id:1,company_id:2)
Freebie.create(value:5, item_name:"Pen", dev_id:1,company_id:2)
Freebie.create(value:3, item_name:"Pencil", dev_id:2,company_id:2)

puts "Seeding done!"
