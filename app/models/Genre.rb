require_relative "concerns/slug_module.rb"
require 'pry'

class Genre < ActiveRecord::Base 
  has_many :artists
  has_many :artists, through: :songs
  has_many :song_genres
  has_many :songs, through: :song_genres
  
  

  include SlugThis::InstanceMethods
  extend SlugThis::ClassMethods
end