class Character < ApplicationRecord
  belongs_to :script

  enum gender: [ :male, :female, :it, :they ]
  enum archetype: [ :hero, :shadow, :friend, :lover, :mentor, :goon, :trickster, :guardian, :herald, :extra ]
  #above should make gender and archetype enumerable datatypes

end
