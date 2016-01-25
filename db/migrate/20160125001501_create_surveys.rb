class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.boolean :one_note
      t.boolean :evernote
      t.boolean :msword
      t.boolean :pages
      t.boolean :google_drive
      t.boolean :excel
      t.boolean :github
      t.boolean :other
      t.string :other_string
      t.string :features_like
      t.string :features_want

      t.timestamps null: false
    end
  end
end
