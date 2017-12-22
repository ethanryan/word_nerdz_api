class ScriptsController < ApplicationController

  def index
    scripts = Script.all
    render json: scripts
  end

  def create
    script = Script.new(script_params) #make a new script with title and user_id from params
    script.create_content("genre", "script_characters") #calling createContent method in script model

    script.save

    characters = characters_params.map do |character_hash|
      character = Character.new(character_hash)
      character.script_id = script.id
      character.save
      character.change_character_names(script)  #create this function
      #character.change_character_genders(script) #create this function
    end #end loop

    script.save
    render json: script
  end #end of create script method


  def show
    script = Script.find(params[:id])
    render json: script
  end


  private

  def script_params
    params.require(:script).permit(:content, :title, :user_id, :genre)
    # need content as attribute above so user can update script (update content)
  end

  def characters_params
    char_params = params.require(:script).permit( characters: [:archetype, :name, :gender] )
    char_params[:characters]
  end

end #end class
