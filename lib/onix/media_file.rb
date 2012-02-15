# coding: utf-8

module ONIX
  class MediaFile
    include ROXML

    xml_name "MediaFile"

    xml_accessor :media_file_type_code, :from => "MediaFileTypeCode", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :media_file_format_code, :from => "MediaFileFormatCode", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :image_resolution, :from => "ImageResolution"
    xml_accessor :media_file_link_type_code, :from => "MediaFileLinkTypeCode", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :media_file_link, :from => "MediaFileLink"
    xml_accessor(:media_file_date, :from => "MediaFileDate", :to_xml => ONIX::Formatters.yyyymmdd) do |val|
      begin
        Date.parse(val)
      rescue
        nil
      end
    end
  end
end
