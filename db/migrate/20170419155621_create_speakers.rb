class CreateSpeakers < ActiveRecord::Migration[5.0]
  def change
    create_table :speakers do |t|
      t.string :name
      t.string :language

      t.timestamps
    end
    change_column_null :speakers, :name, false
    change_column_null :speakers, :language, false
  end
end
