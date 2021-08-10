class Schedule < ApplicationRecord

enum allday: { "●": 0, present?: 1 }    

validates :title, presence: { message:"を入れてください"}
validates :start, presence: { message:"を入力してください"}
validates :finish, presence: { message:"を入力してください"}



validate :finish_past

def finish_past
    if finish.present? && finish < Date.today
      errors.add(:finish, "は今日以降の日付で選択してください" )
      
    end
end

end


