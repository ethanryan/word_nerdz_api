class Character < ApplicationRecord
  belongs_to :script

  enum gender: [ :male, :female, :it, :they ]
  enum archetype: [ :hero, :shadow, :friend, :lover, :mentor, :goon, :trickster, :guardian, :herald, :extra ]
  #above should make gender and archetype enumerable datatypes

def say_hi
  puts "hi"
end


  def change_character_names(script)
    archetypes = ["hero", "shadow", "friend", "lover", "mentor", "trickster"]

    if archetypes.include?(self.archetype)
      script.content.gsub!(self.archetype.upcase, self.name) #ex: replace "HERO" with character.name
    # else
    #   false #need this???
    end #end of if statement
  end #end of method


  def change_character_genders(script)
    archetypes = ["hero", "shadow", "friend", "lover", "mentor", "trickster"]

    # if archetypes.include?(self.archetype)
    #   script.content.gsub!("hero_he/she", self.name) #ex: replace "HERO" with character.name
    #   ###### how to abstract "hero_"???? in above and below lines???
    #   script.content.gsub!("hero_his/her", self.name) #ex: replace "HERO" with character.name
    #   script.content.gsub!("hero_him/her", self.name) #ex: replace "HERO" with character.name
    # # else
    # #   false #need this???
    # end #end of if statement

    self.archetype === "hero" && self.gender === "male" ? script.content.gsub!("hero_he/she", "he") : false
    self.archetype === "hero" && self.gender === "male" ? script.content.gsub!("hero_his/her", "his") : false
    self.archetype === "hero" && self.gender === "male" ? script.content.gsub!("hero_him/her", "him") : false
    self.archetype === "hero" && self.gender === "female" ? script.content.gsub!("hero_he/she", "she") : false
    self.archetype === "hero" && self.gender === "female" ? script.content.gsub!("hero_his/her", "her") : false
    self.archetype === "hero" && self.gender === "female" ? script.content.gsub!("hero_him/her", "her") : false

    self.archetype === "shadow" && self.gender === "male" ? script.content.gsub!("shadow_he/she", "he") : false
    self.archetype === "shadow" && self.gender === "male" ? script.content.gsub!("shadow_his/her", "his") : false
    self.archetype === "shadow" && self.gender === "male" ? script.content.gsub!("shadow_him/her", "him") : false
    self.archetype === "shadow" && self.gender === "female" ? script.content.gsub!("shadow_he/she", "she") : false
    self.archetype === "shadow" && self.gender === "female" ? script.content.gsub!("shadow_his/her", "her") : false
    self.archetype === "shadow" && self.gender === "female" ? script.content.gsub!("shadow_him/her", "her") : false

    self.archetype === "friend" && self.gender === "male" ? script.content.gsub!("friend_he/she", "he") : false
    self.archetype === "friend" && self.gender === "male" ? script.content.gsub!("friend_his/her", "his") : false
    self.archetype === "friend" && self.gender === "male" ? script.content.gsub!("friend_him/her", "him") : false
    self.archetype === "friend" && self.gender === "female" ? script.content.gsub!("friend_he/she", "she") : false
    self.archetype === "friend" && self.gender === "female" ? script.content.gsub!("friend_his/her", "her") : false
    self.archetype === "friend" && self.gender === "female" ? script.content.gsub!("friend_him/her", "her") : false

    self.archetype === "lover" && self.gender === "male" ? script.content.gsub!("lover_he/she", "he") : false
    self.archetype === "lover" && self.gender === "male" ? script.content.gsub!("lover_his/her", "his") : false
    self.archetype === "lover" && self.gender === "male" ? script.content.gsub!("lover_him/her", "him") : false
    self.archetype === "lover" && self.gender === "female" ? script.content.gsub!("lover_he/she", "she") : false
    self.archetype === "lover" && self.gender === "female" ? script.content.gsub!("lover_his/her", "her") : false
    self.archetype === "lover" && self.gender === "female" ? script.content.gsub!("lover_him/her", "her") : false

    self.archetype === "mentor" && self.gender === "male" ? script.content.gsub!("mentor_he/she", "he") : false
    self.archetype === "mentor" && self.gender === "male" ? script.content.gsub!("mentor_his/her", "his") : false
    self.archetype === "mentor" && self.gender === "male" ? script.content.gsub!("mentor_him/her", "him") : false
    self.archetype === "mentor" && self.gender === "female" ? script.content.gsub!("mentor_he/she", "she") : false
    self.archetype === "mentor" && self.gender === "female" ? script.content.gsub!("mentor_his/her", "her") : false
    self.archetype === "mentor" && self.gender === "female" ? script.content.gsub!("mentor_him/her", "her") : false

    self.archetype === "trickster" && self.gender === "male" ? script.content.gsub!("trickster_he/she", "he") : false
    self.archetype === "trickster" && self.gender === "male" ? script.content.gsub!("trickster_his/her", "his") : false
    self.archetype === "trickster" && self.gender === "male" ? script.content.gsub!("trickster_him/her", "him") : false
    self.archetype === "trickster" && self.gender === "female" ? script.content.gsub!("trickster_he/she", "she") : false
    self.archetype === "trickster" && self.gender === "female" ? script.content.gsub!("trickster_his/her", "her") : false
    self.archetype === "trickster" && self.gender === "female" ? script.content.gsub!("trickster_him/her", "her") : false
  end

end
