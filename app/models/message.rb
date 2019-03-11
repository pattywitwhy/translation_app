class Message < ApplicationRecord

  belongs_to :user
  has_many :conversations

  def translate

    translations = {
                     "mom" => "엄마",
                     "dad" => "아빠",
                     "Rosa" => "언니",
                     "Annie" => "애니",
                     "breakfast" => "아침",
                     "lunch" => "전심",
                     "dinner" => "전역",
                     "work" => "일",
                     "why" => "왜",
                     "no" => "아니",
                     "again" => "또",
                     "i don't want to" => "씨러",
                     "what are we eating" => "뭐 먹어",
                     "mom where are you" => "엄마 디야?",
                     "dad where are you" => "아빠 어디야",
                     "when are you coming" => "언재와",
                     "where are you going" => "어디가",
                     "what is it" => "뭐야",
                     "i don't know" => "몰리"
                    }

    translations.each_key do |word|
      body.gsub!(word, translations[word]) if body.include?(word)
    end
  end

end
