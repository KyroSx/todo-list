ActiveRecord::Schema.define(version: 20_201_201_202_307) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'todos', force: :cascade do |t|
    t.string 'title'
    t.string 'details'
    t.boolean 'completed'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end
end
