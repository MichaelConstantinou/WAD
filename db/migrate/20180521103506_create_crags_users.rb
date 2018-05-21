class CreateCragsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :crags_users do |t|
      t.references :user, foreign_key: true
      t.references :crag, foreign_key: true
    end
  end
end
