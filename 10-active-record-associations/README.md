# ActiveRecord Associations

- ActiveRecord Review (File Structure, Migrations, Base methods)
- ActiveRecord Logger
- Relationships in ActiveRecord

## Review

- Gemfile
- Rakefile
- config/environment.rb
- app/models

## ActiveRecord Modeling Conventions
- file called `doctor.rb` defines a class `Doctor`
- table is called `doctors`
- migration often called `create_doctors`; file name and class name must match (words, not title case)
`belongs_to :doctor`
`has_many :patients`


## Migrations
- addition to the database
- "version control"
- set of changes to the shape of our database

### Steps
1. create migrations
2. run migrations
3. create the model (inheriting from ActiveRecord::Base)
4. set up relationships

## Domain

- One patient can have multiple doctors
- One doctor can have multiple patients
- A doctor belongs to a single hospital
- One hospital can have many doctors

# .find vs .find_by
`.find` works only with ids (raises error if not found)
`.`find_by` works with a key-value pair (id, name, whatever) (returns `nil` if not found)