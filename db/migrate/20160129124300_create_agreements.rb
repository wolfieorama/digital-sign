class CreateAgreements < ActiveRecord::Migration
  def change
    create_table :agreements do |t|
      t.string :name
      t.text :signature

      t.timestamps null: false
    end
  end
end
