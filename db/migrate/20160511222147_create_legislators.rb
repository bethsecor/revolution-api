class CreateLegislators < ActiveRecord::Migration
  def change
    create_table :legislators do |t|
      t.string :name
      t.string :state
      t.integer :district
      t.string :political_party
      t.datetime :term_starts_on
      t.datetime :term_ends_on

      t.timestamps null: false
    end
  end
end
