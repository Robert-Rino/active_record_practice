# An ruby active_record practice  

1. How would you define a Person model so that any Person can be assigned as the parent of another Person (as demonstrated in the Rails console below)? What columns would you need to define in the migration creating the table for Person?

```ruby
irb(main):001:0> tim = Person.create(name: "Tim")
irb(main):002:0> wane = Person.create(name: "Wane", parent: tim)
irb(main):003:0> syd = Person.create(name: "Syd", parent: tim)
irb(main):004:0> tim.children.map(&:name)
=> ["Wane", "Syd"]```

2.And for a more advanced challenge: Update the Person model so that you can also get a list of all of a person’s grandchildren, as illustrated below. Would you need to make any changes to the corresponding table in the database?

```ruby
irb(main):001:0> sally = Person.create(name: "Sally")
irb(main):002:0> sue = Person.create(name: "Sue", parent: sally)
irb(main):003:0> kate = Person.create(name: "Kate", parent: sally)
irb(main):004:0> lisa = Person.create(name: "Lisa", parent: sue)
irb(main):005:0> robin = Person.create(name: "Robin", parent: kate)
irb(main):006:0> donna = Person.create(name: "Donna", parent: kate)
irb(main):007:0> sally.grandchildren.map(&:name)
=> ["Lisa", "Robin", "Donna"]
```

## Usage
use `pry` to run the code.
first in command line :
```ruby
require_relative './actiive_record_example.rb'
```
the use the commands above to play Person class
