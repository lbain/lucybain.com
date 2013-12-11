module Nesta
  class App
    not_found do
      cache haml(:error_page_404)
    end

    error do
      cache haml(:error_page_500)
    end

    def enable_comments?
      @page ? !@page.flagged_as?('uncommented') : false
    end

    def home_page
      @page ? @page.flagged_as?('home') : false
    end
  end
end