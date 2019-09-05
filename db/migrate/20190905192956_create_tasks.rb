class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      # task need a title
      t.string :title
      t.boolean :done, default: false
      t.timestamps
    end
  end
end
