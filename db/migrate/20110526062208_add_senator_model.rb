class AddSenatorModel < ActiveRecord::Migration
  def up
    create_table :senators do |t|
      t.string :party
      t.string :state
      t.string :name
      t.string :twitter

      t.timestamps
    end
  end

  def down
    drop_table :senators
  end
end
