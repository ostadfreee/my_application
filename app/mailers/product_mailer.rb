class ProductMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.product_mailer.send_prodcut.subject
  #
  def send_product(product_id)
    @greeting = "Hi"
    @product = Product.find(product_id)

    mail to: "ostadfree@gmail.com"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.product_mailer.spam.subject
  #
  def spam
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
