class AppMailer < ActionMailer::Base
 
  
    def new_reservation(room, reservation)
     
           @user = User.find(room.user_id)
     
           @reservation = reservation
     
           @room = room
     
     mail(from: 'Ccasa <no-reply@ccasa.com>', to: @user.email, subject: "New reservation !")
     
    end
 
end