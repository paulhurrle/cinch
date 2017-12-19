class UserSerializer < ActiveModel::Serializer
    attributes :id, :created_at, :full_name, :email

    def full_name
        "#{object.first_name} #{object.last_name}"
    end

    def created_at
        object.created_at.strftime('%B %d, %Y')
    end
end
