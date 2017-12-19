class ItemSerializer < ActiveModel::Serializer
    attributes :id, :item

    def item
        "#{object.description}"
    end
end
