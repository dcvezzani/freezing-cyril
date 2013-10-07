class WidgetsController < ApplicationController
  class TestDocument < Prawn::Document
    def to_pdf
      text "Hello World!"
      render
    end
  end

  def test
    @record = NewAndReturningMemberProgress.first
    respond_to do |format|
      format.pdf { render :layout => false }
    end
  end

  def test3
    output = ExampleDocument.new.to_pdf
    respond_to do |format|
      format.pdf { 
        send_data output, filename: "hello.pdf", type: "application/pdf", disposition: "inline"
      }
      format.html {
        render text: "<h1>Use .pdf</h1>".html_safe
      }
    end
  end

  def index
    output = TestDocument.new.to_pdf
    respond_to do |format|
      format.pdf { 
        send_data output, filename: "hello.pdf", type: "application/pdf", disposition: "inline"
      }
      format.html {
        render text: "<h1>Use .pdf</h1>".html_safe
      }
    end
  end
end


  # def test2
  #   filename = "blah"
  #   output = \
  #     Prawn::Document.generate("#{Rails.root.to_s}/public/#{filename}.pdf", :page_size => [576,576], :left_margin => 50, :right_margin => 50, :page_layout => :portrait, :skip_page_creation => true, :skip_encoding => true) do |pdf|
  #       pdf.text "Hello World!"
  #     end
  #   
  #   respond_to do |format|
  #     format.pdf { 
  #       send_data output, filename: "hello.pdf", type: "application/pdf", disposition: "inline"
  #     }
  #     format.html {
  #       render text: "<h1>Use .pdf</h1>".html_safe
  #     }
  #   end
  # end
    

