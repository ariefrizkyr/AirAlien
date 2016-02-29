module ApplicationHelper
  def avatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    if user.image
      user.image
    else
      "https://gravatar.com/avatar/#{gravatar_id}.jpg?d=indentical&s=150"
    end
  end

  def active_class(link_path)
    return 'sidebar-link active' if request.path == link_path
    else
      return 'sidebar-link'
  end
end
