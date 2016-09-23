class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :completed, :quadrant_id
end
