class Todo < ApplicationRecord
    belongs_to :project
    has_rich_text :description
end
