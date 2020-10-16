Author.destroy_all

Author.find_or_create_by(first_name: "William", last_name: "Shakespeare", favorite_number: rand(10))
Author.find_or_create_by(first_name: "Miguel", last_name: "Cervantes", favorite_number: rand(10))
Author.find_or_create_by(first_name: "Mary", last_name: "Shelley", favorite_number: rand(10))
Author.find_or_create_by(first_name: "Steven", last_name: "King", favorite_number: rand(10))