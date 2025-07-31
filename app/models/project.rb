class Project < ApplicationRecord
    has_many :todos, dependent: :destroy
    validates :name, presence: { message: "boş bırakılamaz canım 😅" }
end
