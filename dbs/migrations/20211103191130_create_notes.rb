# http://sequel.jeremyevans.net/rdoc/files/doc/migration_rdoc.html
Sequel.migration do
  change do
    create_table(:notes) do
      primary_key :id
      String :note_id, null: false, unique: true #PK

      Integer :user_id, null: false #FK
      String :note_space_id, null: false #FK

      Integer :status, default: 1

      String :title, default: nil
      String :summary, default: nil
      String :content, default: nil

      DateTime :created_at, null: false
      DateTime :updated_at, null: false

      index :note_id, unique: true

    end
  end
end
