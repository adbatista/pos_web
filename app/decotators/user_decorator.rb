# SimpleDelegator é uma classe q o ruby ja implementa em sua stdlib que se precisar usar o pattern
# delegate basta herdar
class UserDecorator < SimpleDelegator
  def self.decorate_collection(users)
    # Array(users) garante q users será um array caso receba apenas um valor unico converte para um array com esse valor
    Array(users).map { |user| new user }
  end

  # exibe a date de nascimento de forma legivel 
  def human_born_date
    born_date.to_s(:long)
  end

  def active
    super ? "Yes" : "No"
  end
end