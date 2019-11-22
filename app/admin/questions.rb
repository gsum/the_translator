ActiveAdmin.register Question do

  permit_params :name, options_attributes: [:option, :right_answer]

  form do |f|
    f.inputs "Question" do 
      f.input :name
    end
    f.has_many :options do |o|
      o.input :option 
      o.input :right_answer
    end
    f.actions
  end
end
