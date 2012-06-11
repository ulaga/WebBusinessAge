xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "PostAdjust Dashboard"
    xml.description "post your ads and questions"
  
    for post in @news_items
      xml.item do
        xml.title post.title
         xml.link  "http://localhost:3000/blogs/#{post.id}"
        xml.update_time post.updated_at
      end
    end
  end
end

