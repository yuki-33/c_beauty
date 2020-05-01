class AdminMailer < ApplicationMailer
  def send_when_booking(inquiry) #メソッドに対して引数を設定
    @inquiry = inquiry #ユーザー情報
    # @answer = contact.reply_text #返信内容
    mail to: @inquiry.shop.email, subject: 'You have received a new booking'
  end
end
