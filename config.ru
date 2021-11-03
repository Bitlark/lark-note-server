require_relative './cores/bootstrap'
Bootstrap.rack
require 'rack/contrib'

use Rack::JSONBodyParser, verbs: ['POST'], media: ['application/json']


require 'controllers/note_spaces_controller'
require 'controllers/notes_controller'
# routers(handy config)

map '/note-spaces' do
  run NoteSpacesController
end

map '/notes' do
  run NotesController
end
