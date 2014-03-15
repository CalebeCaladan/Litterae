OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "oWTnh26yZpsbLm7Gke8D5g", "FxINtpO2CF4LFkgAKdKAwkhXkFQaQQZqsY5jVb5SoE"
end