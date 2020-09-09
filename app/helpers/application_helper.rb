module ApplicationHelper
    def get_vimeo_albums
        data = VimeoMe2::VimeoObject.new(ENV['VIMEO_KEY']).get("/me/albums")
        data.html_safe
    end
end
