# coding: utf-8
module TawkRails
  class Chatbox
    def initialize(params = nil)
      @params = params
    end

    def render_script
      <<-JAVASCRIPT
        <script type="text/javascript">window.$_Tawk = undefined; var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();#{@params}(function(){var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];s1.async=true;s1.src='https://embed.tawk.to/#{TawkRails.configuration.id_site}';s1.charset='UTF-8';s1.setAttribute('crossorigin','*');s0.parentNode.insertBefore(s1,s0);})();</script>
      JAVASCRIPT
    end
  end
end
