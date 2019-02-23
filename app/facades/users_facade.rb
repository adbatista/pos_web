class UsersFacade
  # definindo get e set para variavel de instancia @user_decorator
  attr_accessor :user_decorator

  # Construtor
  def initialize(user_decorator=UserDecorator)
  	@user_decorator = user_decorator
  end

  def active_users
  	decorate User.active
  end

  def inactive_users
	decorate User.inactive
  end

  private

  def decorate(users)
  	user_decorator.decorate_collection users
  end
end