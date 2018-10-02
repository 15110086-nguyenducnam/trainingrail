class PostDecorator < Draper::Decorator
  delegate_all

  # delegate kimanari
  def self.collection_decorator_class
    PaginatingDecorator
  end

  # count like in post
  def show_heart
    self.likes.count == 0
  end

  # check current user like
  def exist_user_like(current_user)
    if self.likes.where(user_like: current_user, like_user: true).count > 0
      return true
    else
      return false
    end
  end
end
