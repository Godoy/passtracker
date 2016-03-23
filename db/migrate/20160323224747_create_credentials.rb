class CreateCredentials < ActiveRecord::Migration
  def change
    create_table :credentials do |t|
      t.string :name
      t.string :host
      t.integer :port
      t.string :user
      t.string :password
      t.references :project, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true
      t.references :credential_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
