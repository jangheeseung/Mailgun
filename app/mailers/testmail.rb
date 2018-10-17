class Testmail < ApplicationMailer
    def email(from_email,to_email,title,content)
        mail from: from_email,
            to: to_email,
        subject: title,
        body: content
    end
end