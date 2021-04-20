class PlantSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :img_url, :time_to_grow, :garden
end
