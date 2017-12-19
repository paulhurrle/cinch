class ListSerializer < ActiveModel::Serializer
    attributes :id, :user

    def user
        "#{object.user.first_name} #{object.user.last_name}"
    end
end
