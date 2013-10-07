require 'example_helper'
class ExampleDocument < Prawn::Example
  def to_pdf

    image "#{Rails.root.to_s}/public/images/pdf/new-and-returning-member-progress.jpg", at: [-20,740], scale: 0.2311

    column_1_left = 36
    column_2_left = 286
    column_3_left = 402
    font_a = 9

    fill_color "2A77A5"

    # Top
    row = 623
    text_box "Ward or branch",    at: [column_1_left, row], size: font_a
    text_box "Stake or district", at: [column_2_left, row], size: font_a 


    # Personal Information
    row = 581
    text_box "Name of member or couple",    at: [column_1_left, row], size: font_a
    text_box "Baptism date(s)", at: [column_2_left, row], size: font_a
    text_box "Confirmation date(s)", at: [column_3_left, row], size: font_a

    row -= 25.5
    text_box "Address",    at: [column_1_left, row], size: font_a
    text_box "Phone number", at: [column_3_left, row], size: font_a

    row -= 25.5
    leader = ".".ljust(45)
    bounding_box([column_1_left, row + 12], width: 480, height: 22) do
      # transparent(0.5){ stroke_bounds }
      text leader + "Names and ages of children", size: font_a
    end

    row -= 25.5
    text_box "Name(s) of assigned ward council members",    at: [column_1_left, row], size: font_a

    # leader = ".".ljust(71)
    # bounding_box([column_1_left, row + 12], width: 480, height: 22) do
    #   # transparent(0.5){ stroke_bounds }
    #   text leader + "Names of home teachers", size: font_a
    # end

    row -= 25.5
    text_box "Names of home teachers",    at: [column_1_left, row], size: font_a

    row -= 25.5 - 1.5
    text_box "Names of visiting teachers",    at: [column_1_left, row], size: font_a


    # Within One Month after Baptism or Return to Activity  /  Date completed
    row -= 22.5

    [1,2,3,4].each do
      row -= 25.5
      # leader = ".".ljust(71)
      bounding_box([column_3_left, row + 12], width: 115, height: 11) do
        # transparent(0.5){ stroke_bounds }
        text Time.now.strftime("%Y/%m/%d"), size: font_a, align: :center
      end
    end

    # Within Six Months after Baptism or Return to Activity  /  Date completed
    row -= 17

    [1,2,3].each do
      row -= 25.5
      # leader = ".".ljust(71)
      bounding_box([column_3_left, row + 12], width: 115, height: 11) do
        # transparent(0.5){ stroke_bounds }
        text Time.now.strftime("%Y/%m/%d"), size: font_a, align: :center
      end
    end

    # As Soon as Appropriate during the First Year  /  Date completed
    row -= 17

    [1,2,3].each do
      row -= 25.5
      # leader = ".".ljust(71)
      bounding_box([column_3_left, row + 12], width: 115, height: 11) do
        # transparent(0.5){ stroke_bounds }
        text Time.now.strftime("%Y/%m/%d"), size: font_a, align: :center
      end
    end

    # When Prepared, but Not before One Year following Baptism  /  Date completed
    row -= 17

    [1,2].each do
      row -= 25.5
      # leader = ".".ljust(71)
      bounding_box([column_3_left, row + 12], width: 115, height: 11) do
        # transparent(0.5){ stroke_bounds }
        text Time.now.strftime("%Y/%m/%d"), size: font_a, align: :center
      end
    end


    stroke_axis
    render
  end
end

