# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :personas_evento, :class => 'PersonasEventos' do
    persona_id 1
    evento_id 1
  end
end
