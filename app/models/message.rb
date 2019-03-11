class Message < ApplicationRecord

  belongs_to :user
  has_many :conversations

  def initialize(input_options)
    super
    translate
  end

  def translate
    translations = {
                     "mom" => "엄마",
                     "dad" => "아빠",
                     "older_sister" => "언니",
                     "little_sister" => "동생",
                     "car" => "차",
                     "dinner" => "전역",
                     "lunch" => "전심",
                     "breakfast" => "아침",
                     "work" => "일",
                     "why" => "애"
                  }

    self.each_with_index do |str, ind|
      translations.each_key do |word|
        self[ind].gsub!(word, translations[word]) if str.include?(word)
      end
    end
    
  end

  # message = ["mom what are you doing", "dad what are you doing", "mom and dad", "what's for lunch"]


  # message.each_with_index do |str,ind|
  #   translations.each_key do |word|
  #     message[ind].gsub!(word,translations[word]) if str.include?(word)
  #   end
  # end


end
