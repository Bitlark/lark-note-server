require_relative './cores/bootstrap'
Bootstrap.rack

require 'controllers/note_spaces_controller'
require 'controllers/notes_controller'
# routers(handy config)

map '/note-spaces' do
  run NoteSpacesController
end

map '/notes' do
  run NotesController
end
