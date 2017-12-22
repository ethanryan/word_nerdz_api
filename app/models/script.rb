class Script < ApplicationRecord
  belongs_to :user
  has_many :characters
  has_many :script_scenes
  has_many :scenes, through: :script_scenes
  has_many :plots, through: :scenes
  has_many :genres, through: :plots

  serialize :content, Array #this presents the script content as an array of scene objects, instead of a big string of text.
  #note.... need to comment out above line to run methods in console, otherwise get an error.
  
  # def create_content
  #   puts "hello"
  #   return 666
  # end #end of method

   SCRIPT_LENGTH = 5 #for now

    def create_content(genre, characters) #took out characters as an argument for now
      scenes = (1..SCRIPT_LENGTH).to_a #array of scenes, 1-5 (for now)

      puts "comments via create_content method:"
      puts scenes #this puts out numbers, 1, 2, 3, 4, 5
      puts "all of the scenes in order"

      # scenes = scenes.map do |num|  #### i think doing it like this makes it not save the content in order by order (it does it by id instead)
      scenes.map do |num|
        #why did i need to do this here (scenes = scenes) but i didn't need to do this in story generator app, with paragraph?
       Scene.where({order: [num]}).order("RANDOM()").first
      end #end loop

      puts "maping over scenes in order, getting random scene for each scene"

      self.scenes << scenes #rails wants a scene and is getting a number... fixed with (scenes = scenes)

      puts "pushing scenes to Script.scenes"

      self.content = self.script_content #calling script_content below, which assigns the array of scene objects to script's content

      ###note: remember, script needs user_id to be saved...

    end #end createContent

    ##### CHANGE THIS METHOD... want script content to be an object... OR is it ok, as an array of objects??
    def script_content
      puts "pushing each_scene to Script.content"
      #full_script = self.scenes.map #instead of below, just make script content same as scenes?!!?!?!??!
     full_script = self.scenes.map do |each_scene| #full_script is an array of strings
       each_scene #return array of objects, instead of array of text
     end
  end #end script_content

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
