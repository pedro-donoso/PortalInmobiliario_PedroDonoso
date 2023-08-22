class Feature < ApplicationRecord
    # Validaciones Modelo de Referencia Feature
    validates :name,    presence: true,
                        uniqueness: true
    validates :available, inclusion: { in: [true, false] }
end
