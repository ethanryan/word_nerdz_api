class Script < ApplicationRecord
  belongs_to :user
  has_many :characters
  has_many :script_scenes
  has_many :scenes, through: :script_scenes
  has_many :plots, through: :scenes
  has_many :genres, through: :plots

  serialize :content, Array #this presents the script content as an array of scene objects, instead of a big string of text.

  # def create_content
  #   puts "hello"
  #   return 666
  # end #end of method

   SCRIPT_LENGTH = 5 #for now

    def create_content(genre) #took out characters as a argument for now
      scenes = (1..SCRIPT_LENGTH).to_a #array of scenes, 1-5 (for now)

      puts scenes
      puts "all of the scenes in order"

      scenes = scenes.map do |num|
        #why did i need to do this here (scenes = scenes) but i didn't need to do this in story generator app, with paragraph?
       Scene.where({order: [num]}).order("RANDOM()").first
      end #end loop

      puts "maping over scenes in order, getting random scene for each scene"

      self.scenes << scenes #rails wants a scene and is getting a number... fixed with (scenes = scenes)

      puts "pushing scenes to Script.scenes"

      self.content = self.script_content #calling story_content below

      ###note: remember, script needs user_id to be saved...

    end #end createContent

    ##### CHANGE THIS METHOD... want script content to be an object...
    def script_content
      #full_script = self.scenes.map #instead of below, just make script content same as scenes?!!?!?!??!
     full_script = self.scenes.map do |p| #full_script is an array of strings
       p #return array of of objects, instead of array of text
       #p.text #making each paragraph / scene text, but i don't want this, i want objects instead
     end
    # full_script.join("-----") #joining array into a string with lines inbetween each scene, that i later break... but i don't want this either
    end #end story_content

    ######from last app, word_nerds_api story generator

#  STORY_LENGTH = 5

  # def create_content(genre, characters)
  #   paragraphs = (1..STORY_LENGTH).to_a
  #   paragraphs.map do |num|
  #    Paragraph.where({order: [num]}).order("RANDOM()").first
  #   end #end loop
  #   self.paragraphs << paragraphs
  #   self.content = self.story_content #calling story_content below
  # end #end createContent
  #
  #
  # def story_content
  #   full_story = self.paragraphs.map do |p|
  #     p.text
  #   end
  # full_story.join("-----")

end #end of class
