class CreateCredentialTypes < ActiveRecord::Migration
  def change
    create_table :credential_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
