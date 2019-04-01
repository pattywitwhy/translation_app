require 'http'

class Message < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :conversation

  validates :body, length: { maximum: 300} 


  def translate

    # translations = {
    #                  "i don't want to" => "씨러",
    #                  "what are we eating" => "뭐 먹어",
    #                  "mom where are you" => "엄마 어디야?",
    #                  "dad where are you" => "아빠 어디야",
    #                  "when are you coming" => "언재와",
    #                  "where are you going" => "어디가",
    #                  "what are you doing" => "뭐해",
    #                  "what is it" => "뭐야",
    #                  "i don't know" => "몰리",
    #                  "i love you" => "사랑해",
    #                  "mom" => "엄마",
    #                  "dad" => "아빠",
    #                  "Rosa" => "언니",
    #                  "Annie" => "애니",
    #                  "breakfast" => "아침",
    #                  "lunch" => "전심",
    #                  "dinner" => "전역",
    #                  "work" => "일",
    #                  "why" => "왜",
    #                  "again" => "또",
    #                  "no" => "아니",
    #                  "sure" => "응",
    #                  "ok" => "아랐어"
    #                 }

    # translations.each_key do |word|
    #   body.gsub!(word, translations[word]) if body.include?(word)
    # end
  end

  def language_key
      code = {
                "English" => "en",
                "Korean" => "ko",
                "Vietnamese" => "vi",
                "Italian" => "it",,
                "Chinese" => "zh",
                "Spanish" => "es",
                "Japanese" => "ja",
                "French" => "fr",
                "Slovakian" => "sk",
                "Russian" => "ru",
                "German" => "de",
                "Polish" => "pl"
      }
  end
end