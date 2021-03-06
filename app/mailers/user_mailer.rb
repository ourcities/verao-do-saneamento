class UserMailer < ActionMailer::Base
  default from: "Meu Rio <leona@meurio.org.br>"

  def welcome user
    headers "X-SMTPAPI" => "{ \"category\": [\"vds\", \"welcome\"] }"
    mail(to: user.email, subject: "Verão do Saneamento")
  end
end
