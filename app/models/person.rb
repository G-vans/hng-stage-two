class Person < ApplicationRecord
    validates :name, format: { with: /\A[a-zA-Z\s]+\z/, message: "Only letters are allowed" }
    validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Invalid email format" }
    validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true
  end
  