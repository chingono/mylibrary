class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|

      t.integer :category_id

      t.string :link

      t.text :abstract

      t.string :title


      t.timestamps

    end

  end
end
