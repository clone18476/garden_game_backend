class PlantSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :img_url, :garden
end
