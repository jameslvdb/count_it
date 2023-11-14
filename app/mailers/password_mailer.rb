class PasswordMailer < ApplicationMailer
  after_deliver :observe_delivery

  def password_reset
    mail to: params[:user].email, subject: "Reset your password"
  end

  private

  def observe_delivery
    return unless Rails.env.development?

    puts "Email delivered to #{params[:user].email}"
    puts "Email preview: #{mail.body.encoded}"
  end
end
