class Project < ApplicationRecord
    validates :name, presence: { message: "boş bırakılamaz canım 😅" }
end
