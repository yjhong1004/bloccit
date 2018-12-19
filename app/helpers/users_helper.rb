module UsersHelper
  def user_has_any_posts?()
    user.posts.any?
  end

  def user_has_any_comments?()
    user.comments.any?
  end

end
