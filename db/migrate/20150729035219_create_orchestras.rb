class CreateOrchestras < ActiveRecord::Migration
  def change
    create_table :orchestras do |t|
      t.string  :orch_name
      t.timestamps null: false
    end
  end
end
