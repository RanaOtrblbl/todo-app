class Todo < ApplicationRecord
    belongs_to :project
    has_rich_text :description
  

    #filtre kısmında güvenlik için?
    def self.ransackable_attributes(auth_object = nil)
      ["completed", "created_at", "deadline", "description", "id", "name", "priority", "project_id", "updated_at"]
    end
  end

  def self.ransackable_associations(auth_object = nil)
    ["project"]

  # Turbo Broadcast için:
  after_create_commit -> { broadcast_append_to "todos" }
  after_update_commit -> { broadcast_replace_to "todos" }
  after_destroy_commit -> { broadcast_remove_to "todos" }

  end
  
  
