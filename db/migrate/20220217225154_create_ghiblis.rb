class CreateGhiblis < ActiveRecord::Migration[6.1]
  def change
    create_table :ghiblis do |t|
      t.string :phrase

      t.timestamps
    end
  end
end
