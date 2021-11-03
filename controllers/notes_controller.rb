# Sinatra Doc http://sinatrarb.com/intro.html
require 'models/note'

class NotesController < BaseController

    get '/' do
      
      # TODO  add Query
      data = Note.all

      json({
        data: data
      })
    end
  end