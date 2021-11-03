# http://sequel.jeremyevans.net/rdoc/files/doc/migration_rdoc.html
Sequel.migration do
  change do
    create_table(:note_spaces) do
      primary_key :id

      String :note_space_id, null: false, unique: true #PK

      String :name, null: false, unique: true

      Integer :status, default: 1
      Integer :count, default: 0

      index :name, unique: true
      index :note_space_id, unique: true
    end
  end
end
