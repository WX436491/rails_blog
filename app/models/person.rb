class Person < ApplicationRecord

  validates :name, presence: true, length: { minimum: 3 }
end

person = Person.new
person.valid? # => false
person.errors.messages
 # => {:name=>["can't be blank", "is too short (minimum is 3 characters)"]}

person = Person.new(name: "John Doe")
person.valid? # => true
person.errors.messages
  validates :token, presence: true, uniqueness: true, strict: TokenGenerationException
end

Person.new.valid?
