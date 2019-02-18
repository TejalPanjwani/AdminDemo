class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :username
      t.string :servicename
      t.string :descrition

      t.timestamps
    end
  end
end
