Rails.application.config.middleware.use OmniAuth::Builder do
    provider :twitter,
    "FXEmyAKcZZdAwGLWCWWxGXTaP",
    "vpyYIS45JBH3v1UP7jcIT5DKFTbRtboxmYq6ZHeYeWdJOxzG9s"
end