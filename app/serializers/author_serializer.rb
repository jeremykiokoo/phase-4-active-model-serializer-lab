class AuthorSerializer < ActiveModel::Serializer
  attributes :name, :profile, :posts

  def profile
    ProfileSerializer.new(object.profile)
  end

  def posts
    object.posts.map do |post|
      PostSerializer.new(post)
    end
  end
end
