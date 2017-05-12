require 'active_record'

ActiveRecord::Base.logger = Logger.new(File.open('database.log', 'w'))

ActiveRecord::Base.establish_connection(
  :adapter  => 'sqlite3',
  :database => 'example.db'
)

ActiveRecord::Schema.define do
  unless ActiveRecord::Base.connection.tables.include? 'people'
    create_table :people do |table|
      table.column :name,     :string
      table.column :parent_id, :integer
    end
  end
end

class Person < ActiveRecord::Base
  belongs_to :parent, class_name: Person
  has_many :children , class_name: Person, foreign_key: :parent_id
end
