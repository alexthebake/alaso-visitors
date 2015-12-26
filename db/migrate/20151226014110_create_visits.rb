class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :visitor_id
      t.string :employee
      t.datetime :checked_out_at
      t.timestamps
    end

    add_foreign_key :visits, :visitors
  end
end
