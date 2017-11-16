class Person < ApplicationRecord
  validates :name, presence: true


end
Person.create(name: "John Doe").valid?
Person.create(name: nil).valid?
