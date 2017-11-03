class Script < ApplicationRecord
  belongs_to :user
  has_many :characters
  has_many :script_scenes
  has_many :scenes, through: :script_scenes
  has_many :plots, through: :scenes
  has_many :genres, through: :plots
end
