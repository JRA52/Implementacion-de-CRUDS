# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_03_02_061810) do
  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "state_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "clientes", force: :cascade do |t|
    t.string "name"
    t.boolean "persona_juridica"
    t.string "nro_doc"
    t.integer "telefono"
    t.integer "empresa_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empresa_id"], name: "index_clientes_on_empresa_id"
  end

  create_table "empresas", force: :cascade do |t|
    t.string "name"
    t.string "rif"
    t.integer "telefono"
    t.integer "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_empresas_on_city_id"
  end

  create_table "estatuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proyectos", force: :cascade do |t|
    t.integer "codigo"
    t.date "fecha_inicio"
    t.string "name"
    t.decimal "valor"
    t.text "descripion"
    t.integer "cliente_id", null: false
    t.integer "estatus_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_proyectos_on_cliente_id"
    t.index ["estatus_id"], name: "index_proyectos_on_estatus_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cities", "states"
  add_foreign_key "clientes", "empresas"
  add_foreign_key "empresas", "cities"
  add_foreign_key "proyectos", "clientes"
  add_foreign_key "proyectos", "estatuses"
end
