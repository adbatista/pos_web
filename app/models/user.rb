class User < ApplicationRecord
  has_many :books

  # Cria um escopo para retornar users ativos quando chamar User.active
  scope :active, -> { where(active: true) }
  # Cria um escopo para retornar users inativos quando chamar User.inactive
  scope :inactive, -> { where(active: false) }

  # to_string em ruby
  def to_s
  	name
  end
end
