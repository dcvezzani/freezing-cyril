filename = "blah"
      Prawn::Document.generate("#{Rails.root.to_s}/public/#{filename}.pdf", :page_size => [576,576], :left_margin => 50, :right_margin => 50, :page_layout => :portrait, :skip_page_creation => true, :skip_encoding => true) do |pdf|
        debugger
        bg_image = File.open("#{Rails.root.to_s}/public/images/pdf/abstract_color_background_picture_8016-wide.jpg", "r")
        #pdf.image bg_image, :scale => 0.2311, :vposition => :top
        #pdf.image bg_image, :scale => 0.2311, :at => [0,0]
        pdf.image bg_image, :scale => 0.2311
        pdf.move_up 576
        bg_image.close
      end

=begin
load 'test.rb'
b /Users/davidvezzani/.rvm/gems/ruby-1.9.3-p327@r3.2/gems/prawn-0.12.0/lib/prawn/images.rb:102
b /Users/davidvezzani/.rvm/gems/ruby-1.9.3-p327@r3.2/gems/prawn-0.12.0/lib/prawn/images.rb:104
b /Users/davidvezzani/.rvm/gems/ruby-1.9.3-p327@r3.2/gems/prawn-0.12.0/lib/prawn/images.rb:146
b /Users/davidvezzani/.rvm/gems/ruby-1.9.3-p327@r3.2/gems/prawn-0.12.0/lib/prawn/document.rb:425

b /Users/davidvezzani/rails-app/freezing-cyril/vendor/prawn/lib/prawn/images.rb:102
b /Users/davidvezzani/rails-app/freezing-cyril/vendor/prawn/lib/prawn/images.rb:104

load 'test.rb'
b /Users/davidvezzani/rails-app/freezing-cyril/vendor/prawn/lib/prawn/images.rb:70
b /Users/davidvezzani/rails-app/freezing-cyril/vendor/prawn/lib/prawn/images.rb:178
b /Users/davidvezzani/rails-app/freezing-cyril/vendor/prawn/lib/prawn/images.rb:170
b /Users/davidvezzani/rails-app/freezing-cyril/vendor/prawn/lib/prawn/document.rb:425



load 'test.rb'
b /Users/davidvezzani/rails-app/freezing-cyril/vendor/prawn/lib/prawn/text.rb
=end
