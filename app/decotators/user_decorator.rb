# SimpleDelegator é uma classe q o ruby ja implementa em sua stdlib que se precisar usar o pattern
# delegate basta herdar, olhando o código o decorator fica como se o UserDecorator herdasse de User
class UserDecorator < SimpleDelegator
  def self.decorate_collection(users)
    # Array(users) garante q users será um array caso receba apenas um valor unico converte para um array com esse valor
    Array(users).map { |user| new user }
  end

  # exibe a date de nascimento de forma legivel 
  def born_date
    super.to_s(:long)
  end

  def active
    super ? "Yes" : "No"
  end
end