class Category < ApplicationRecord

    # Validaciones Modelo de Referencia Category
    validates :name,    presence: true,
                        uniqueness: true
    validates :available, inclusion: { in: [true, false] }

end
