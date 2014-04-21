class CreateArticles < ActiveRecord::Migration
  def up
    create_table :articles do |t|
      t.string :name
      t.integer :user_id
      t.timestamps
    end

    Article.create_translation_table!({
      name: :string,
      content: :text
    }, {
      migrate_data: true
    })
  end

  def down
    Article.drop_translation_table! migrate_data: true
  end
end
