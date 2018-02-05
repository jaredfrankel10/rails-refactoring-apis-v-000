ActiveRecord::Schema.define(version: 20180131160116) do
 
   create_table "github_repos", force: :cascade do |t|
     t.datetime "created_at", null: false
     t.datetime "updated_at", null: false
   end

 end
