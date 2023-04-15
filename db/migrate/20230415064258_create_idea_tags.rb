class CreateIdeaTags < ActiveRecord::Migration[7.0]
  def change
    create_table :idea_tags do |t|
      t.references :idea, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
