# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131219053249) do

  create_table "about_pages", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attribute_lists", force: true do |t|
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "str"
    t.integer  "dex"
    t.integer  "con"
    t.integer  "int"
    t.integer  "wis"
    t.integer  "cha"
  end

  create_table "characters", force: true do |t|
    t.string   "name"
    t.string   "summary"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "campaign"
    t.string   "race_id"
    t.integer  "class_id"
  end

  create_table "class_levels", force: true do |t|
    t.integer  "level"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pathfinder_class_id"
  end

  create_table "descriptions", force: true do |t|
    t.string   "alignment"
    t.string   "player"
    t.string   "deity"
    t.string   "homeland"
    t.string   "gender"
    t.string   "height"
    t.string   "weight"
    t.string   "eyes"
    t.string   "hair"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "character_id"
    t.string   "age"
  end

  create_table "feat_assignments", force: true do |t|
    t.integer  "character_id"
    t.integer  "feat_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feats", force: true do |t|
    t.string   "name"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "feat_types"
    t.text     "description"
    t.text     "prerequisites"
    t.text     "prerequisite_feats"
  end

  create_table "pathfinder_classes", force: true do |t|
    t.string   "class_name"
    t.string   "hit_dice"
    t.string   "armor_proficiencies"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "available_alignments"
    t.string   "starting_wealth"
    t.integer  "base_skill_ranks_per_level"
    t.string   "class_spells_per_day"
    t.string   "spell_list_type"
    t.string   "bonus_languages"
    t.string   "miscelaneous_features"
    t.text     "weapon_proficiencies"
    t.text     "class_skills"
    t.text     "class_abilities"
    t.text     "base_attack_bonuses"
    t.text     "base_saves"
    t.text     "role"
  end

  create_table "races", force: true do |t|
    t.string   "race_name"
    t.string   "size"
    t.string   "attribute_modifiers"
    t.string   "default_languages"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "race_description"
    t.text     "available_languages"
  end

  create_table "users", force: true do |t|
    t.string   "email",            null: false
    t.string   "user_name"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
