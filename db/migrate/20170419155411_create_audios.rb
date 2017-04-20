class CreateAudios < ActiveRecord::Migration[5.0]
  def change
    create_table :audios do |t|
      t.string :status
      t.string :audio_url
      t.string :text

      t.timestamps
    end
    change_column_null :audios, :status, false
    change_column_null :audios, :text, false
    add_reference :audios, :speaker, index: true, foreign_key: true
  end
end
