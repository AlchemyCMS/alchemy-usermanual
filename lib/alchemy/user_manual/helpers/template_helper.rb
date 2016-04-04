module Alchemy
  module UserManual
    module TemplateHelper

      private

      def translated_element_name(name)
        Alchemy.t(name, scope: 'element_names', default: name.humanize)
      end

      def element_anchor_name(element_name)
        "element_#{translated_element_name(element_name).parameterize}"
      end

      def layout_properties(layout)
        properties = []
        properties << ["layoutpage", layout["layoutpage"] || "false"]
        properties << ["uniqueness", layout["unique"] || "false"]
        properties << ["available_elements", linked_element_collection(layout["elements"]) || "none" ]
        properties << ["element_autogenerating", linked_element_collection(layout["autogenerate"]) || "none"]
      end

      def element_properties(element)
        properties = []
        properties << ['element_amount', possible_amount_of_element(element)]
      end

      def property_name(property)
        Alchemy.t(property.first, scope: "user_manual")
      end

      def property_value(property)
        Alchemy.t(property.last, scope: "user_manual")
      end

      def linked_element_collection(element_names=[])
        return if element_names.blank?
        element_names.map {|e| "[#{translated_element_name(e)}](##{element_anchor_name(e)})" }.join(", ")
      end

      def possible_amount_of_element(element)
        if element['unique'].to_s == "true"
          'once_per_page'
        else
          element['amount'].present? ? element['amount'] : 'unlimited'
        end
      end

    end
  end
end
