if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_wflPAPgAGUwF05rTbjYqniYS',
    secret_key: 'sk_test_5CofL7V5CDWVVhipiPc0uxAA'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]