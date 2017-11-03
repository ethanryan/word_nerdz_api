class Genre < ApplicationRecord
  has_many :plots
  has_many :scenes, through: :plots
  has_many :script_scenes, through: :scenes
  has_many :scripts, through: :script_scenes
end
