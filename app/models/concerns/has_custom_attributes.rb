require 'active_support/concern'

module HasCustomAttributes
  extend ActiveSupport::Concern

  included do
    has_one :custom_attributes, as: :parent, dependent: :destroy

    @model_attributes = ModelAttributes.find_or_create_by(parent_type: name)

    self.model_attributes.m_attributes.each do |k, v|
      define_method("#{k}") do
        custom_attributes.c_attributes[k]
      end
      define_method("#{k}=") do |value|
        build_custom_attributes if custom_attributes.nil?
        custom_attributes.c_attributes[k] = value
      end
    end
  end

  class_methods do
    def model_attributes
      @model_attributes
    end

    def custom_attrs(*args)
      args.each do |arg|
        model_attributes.m_attributes[arg] = true
      end
      model_attributes.save
    end
  end
end