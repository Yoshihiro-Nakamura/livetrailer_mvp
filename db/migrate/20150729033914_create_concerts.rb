class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
        t.string  :title
        t.integer  :conductor_id
        t.integer  :orchestra_id
        t.integer  :place_id
        t.datetime :start_date
      t.timestamps
    end
  end
end
