module Nesta
  class App
    not_found do
      cache haml(:error_page_404)
    end

    error do
      cache haml(:error_page_500)
    end
  end
end