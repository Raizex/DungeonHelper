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

ActiveRecord::Schema.define(version: 20131209024317) do

  create_table "ability_scores", force: true do |t|
    t.string   "name"
    t.integer  "race_modifier"
    t.integer  "temp_modifier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attribute_lists", force: true do |t|
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characters", force: true do |t|
    t.string   "name"
    t.string   "summary"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "campaign"
    t.string   "race_id"
  end

  create_table "class_levels", force: true do |t|
    t.integer  "level"
    t.integer  "class_id"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  create_table "pathfinder_classes", force: true do |t|
    t.string   "class_name"
    t.string   "hit_dice"
    t.string   "weapon_proficiencies"
    t.string   "armor_proficiencies"
    t.string   "class_skills"
    t.string   "class_abilities"
    t.string   "base_attack_bonuses"
    t.string   "base_saves"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "available_alignments"
    t.string   "starting_wealth"
    t.integer  "base_skill_ranks_per_level"
    t.string   "class_spells_per_day"
    t.string   "spell_list_type"
    t.string   "bonus_languages"
    t.string   "miscelaneous_features"
  end

  create_table "races", force: true do |t|
    t.string   "race_name"
    t.string   "race_description"
    t.string   "size"
    t.string   "attribute_modifiers"
    t.string   "default_languages"
    t.string   "available_languages"
    t.datetime "created_at"
    t.datetime "updated_at"
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
