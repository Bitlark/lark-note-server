# Sinatra Doc http://sinatrarb.com/intro.html
require 'models/note-space'

class NoteSpacesController < BaseController

    get '/' do
      
      # TODO  add Query
      data = NoteSpace.all

      json({
        data: data
      })
    end
  end