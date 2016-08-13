module ApplicationHelper
    def title
       "LoCo MusicFest" 
    end
    
    def embed(youtube_url)
        youtube_id = youtube_url.split("=").last
        content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
    end
    
    def vendor_placeholders(num=3)
        str = ""
        num.times do |n|
          str += "<div class='well'><p class='lead'>PLACEHOLDER</p><p>AD Space #{n + 1}</p></div>"
        end
        str.html_safe
    end
end
