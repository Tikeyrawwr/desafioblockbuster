class Client < ApplicationRecord
  has_many :movies
  validates :name, presence: true
  validates :age, presence: true, format: { with: /\A\d+\z/, message: "Solo puedes poner numeros " }

  def has_rented_movie?
    movies.present?
  end
end