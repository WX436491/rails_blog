class Person < ApplicationRecord
  validates :name, presence: true

  Person.create(name: "John Doe").valid?
  Person.create(name: nil).valid?
end
