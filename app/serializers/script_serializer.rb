class ScriptSerializer < ActiveModel::Serializer
  attributes :id,
             :user_id,
             :title,
             :content,

             :user,

             :genres,
             :plots,
             :scenes,

             :characters
end

#to make serializer, in rails terminal:::
#rails g serializer [name_of_model_making_serializer_for]
