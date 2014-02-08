class ContactForm < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message 
  attribute :nickname, :captcha => true 

  def headers 
    {
      :subject => "Nat Kirk Photo Contact Form",
      :to => "natalie_kirk@hotmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end

end
