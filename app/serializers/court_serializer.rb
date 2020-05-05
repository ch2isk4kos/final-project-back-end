class CourtSerializer < ActiveModel::Serializer
    attributes :id, :name, :address, :img_url, :floor_type
end
