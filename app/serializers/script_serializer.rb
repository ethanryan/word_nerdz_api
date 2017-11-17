class ScriptSerializer < ActiveModel::Serializer
  attributes :id,
             :user_id,
             :title,
             :content,

            #  :user, #don't need to show user...

            #  :genres, #don't need to show genres...
            #  :plots, #don't need to show plots...

             :scenes #but we DO need to show the scenes, but why???
                      #something about the serializer, or the seed files,
                      #or create_content method in the script model??


            #  :characters #don't need to show characters...
end

#to make serializer, in rails terminal:::
#rails g serializer [name_of_model_making_serializer_for]
