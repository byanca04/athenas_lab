# frozen_string_literal: true

class CreateChatRecomendations < ActiveRecord::Migration[7.0]
  def change
    create_table :chat_recomendations do |t|
      t.text :title, null: false
      t.text :description, null: false
      t.references :chat, null: false, foreign_key: true
      t.text :content, null: false

      t.timestamps
    end
  end
end