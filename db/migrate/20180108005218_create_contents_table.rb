class CreateContentsTable < ActiveRecord::Migration[5.1]
    def up
        create_table :contents do |t|
            t.text :url
            t.text :content_type
            t.text :title
            t.text :long_title
            t.text :title_img_path
            t.text :iframe_path
            t.text :markdown_path
        end
    end

    def down
        drop_table :contents
    end
end
