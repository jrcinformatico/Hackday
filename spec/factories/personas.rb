# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :persona do
    nombres "MyString"
    apellidos "MyString"
    email "MyString"
    celular "MyString"
    institucion_id 1
    region_id 1
    comentario "MyText"
    estudio "MyString"
  end
end
