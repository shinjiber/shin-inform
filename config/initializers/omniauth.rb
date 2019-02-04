Rails.application.config.middleware.use OmniAuth::Builder do
    provider :twitter,
    "FXEmyAKcZZdAwGLWCWWxGXTaP",
    "vpyYIS45JBH3v1UP7jcIT5DKFTbRtboxmYq6ZHeYeWdJOxzG9s",
    {
      :secure_image_url => 'true',
      :image_size => 'original',
      :authorize_params => {
      :force_login => 'true',
      :lang => 'pt'
      }
    }
end