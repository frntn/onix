# coding: utf-8

module ONIX
  class Set
    include ROXML

    xml_name "Set"

    xml_accessor :title_of_set,      :from => "TitleOfSet"
    xml_accessor :item_number_within_set, :from => "ItemNumberWithinSet"
  end
end
