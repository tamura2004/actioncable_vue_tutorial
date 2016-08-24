%w(area place name info page_1 page_2 page_3 page_4 page_5 page_6 page_7 page_8 msg_1 msg_2 msg_3 msg_4).each do |data|
  puts <<-"EOD"
    {data: "#{data}"},
  EOD
end

__END__
#

rails g model menu item_id:integer item_type:string menu:references
rails g model area name
rails g model place name area:references



rails g scaffold page area place name info page_1 page_2 page_3 page_4 page_5 page_6 page_7 page_8 msg_1 msg_2 msg_3 msg_4
