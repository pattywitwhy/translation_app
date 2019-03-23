require 'http'

class Message < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :conversation

  validates :body, length: { maximum: 300} 


  def translate

    # response = HTTP.get("https://translate.yandex.net/api/v1.5/tr.json/translate?key=trnsl.1.1.20190320T200646Z.834031e5f9a4407a.a488be9050a3cd89d11da5dabafc996b6b3570af&lang=ko&text=dad")

    # #{[:body]}

    # puts "*************************************"

    # translation = response.parse
    # puts "=================================="
    # p translation
    # puts "=================================="

    # body = translation.values[2][0]
    # p body
    # puts "*************************************"
    # body
    # @message.body

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



    # spanish_translations = {
    #                                          "i don't want to" => "no quiero",
    #                                          "what are we eating" => "que vamos a comer",
    #                                          "mom where are you" => "mama donde estas",
    #                                          "dad where are you" => "papa donde estas",
    #                                          "when are you coming" => "cuando vas a venir",
    #                                          "where are you going" => "a donde vas",
    #                                          "what are you doing" => "que estas haciendo",
    #                                          "what is it" => "que es",
    #                                          "i don't know" => "noce",
    #                                          "i love you" => "te amo",
    #                                          "mom" => "mama",
    #                                          "dad" => "papa",
    #                                          "Rosa" => "Rosa",
    #                                          "Annie" => "Annie",
    #                                          "breakfast" => "desayuno",
    #                                          "lunch" => "almuerzo",
    #                                          "dinner" => "sena",
    #                                          "work" => "trabajo",
    #                                          "why" => "porque",
    #                                          "again" => "otra ves",
    #                                          "no" => "no",
    #                                          "sure" => "claro",
    #                                          "ok" => "ok"
    #                        }

    # translations.each_key do |word|
    #   body.gsub!(word, translations[word]) if body.include?(word)
    # end
  end

end