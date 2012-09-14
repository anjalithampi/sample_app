module UsersHelper
    def gravatar_for(user, options = {:size => 40})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    # From http://blog.douglasfshearer.com/post/17546994128/gravatar-for-ruby-and-ruby-on-rails
    gravatar_url << "?size=#{options[:size]}" if options[:size]
    gravatar_url << "?rating=#{options[:rating]}" if options[:rating]
    gravatar_url << "?default=#{options[:default]}" if options[:default]
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
