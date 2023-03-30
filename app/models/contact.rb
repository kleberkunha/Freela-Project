class Contact < MailForm::Base
  append :remote_ip, :user_agent, :session

  attribute :name, validate: true
  attribute :subject, validate: true
  attribute :message, validate: true
  attribute :email, validate: true, validate: /\A[^@\s]+@[^@\s]+\z/i
  attribute :nickname, captcha: true

  def headers
    {
      subject: "My Contact Form",
      to: "hello.kleberkunha@gmail.com",
      from: %("#{name}" <#{email}>)
    }
  end
end
