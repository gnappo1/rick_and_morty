require_relative "./rick_and_morty/version"
require_relative "./rick_and_morty/api"
require_relative "./rick_and_morty/cli"
require_relative "./rick_and_morty/character"

require "httparty"
require "net/http"
require "pry"

module RickAndMorty
  class Error < StandardError; end
  # Your code goes here...
end
