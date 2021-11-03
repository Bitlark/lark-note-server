Sequel.migration do
  change do
    create_table(:note_spaces) do
      primary_key :id
      column :note_space_id, "text", :null=>false
      column :name, "text", :null=>false
      column :status, "integer", :default=>1
      column :count, "integer", :default=>0
      
      index [:name], :unique=>true
      index [:name], :name=>:note_spaces_name_key, :unique=>true
      index [:note_space_id], :unique=>true
      index [:note_space_id], :name=>:note_spaces_note_space_id_key, :unique=>true
    end
    
    create_table(:notes) do
      primary_key :id
      column :note_id, "text", :null=>false
      column :user_id, "integer", :null=>false
      column :note_space_id, "text", :null=>false
      column :status, "integer", :default=>1
      column :title, "text"
      column :summary, "text"
      column :content, "text"
      column :created_at, "timestamp without time zone", :null=>false
      column :updated_at, "timestamp without time zone", :null=>false
      
      index [:note_id], :unique=>true
      index [:note_id], :name=>:notes_note_id_key, :unique=>true
    end
    
    create_table(:schema_migrations) do
      column :filename, "text", :null=>false
      
      primary_key [:filename]
    end
  end
end
