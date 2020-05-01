class BookMailer < ApplicationMailer
  def send_when_booking(inquiry) #メソッドに対して引数を設定
    @inquiry = inquiry #ユーザー情報
    # @answer = contact.reply_text #返信内容
    mail to: inquiry.email, subject: 'Your booking has been sent!'
  end
end
