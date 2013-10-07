image "#{Rails.root.to_s}/public/images/pdf/new-and-returning-member-progress.jpg", at: [-20,740], scale: 0.2311

column_1_left = 39
column_2_left = 289
column_3_left = 405
font_a = 9

fill_color "2A77A5"

# Top
row = 623
text_box @record.ward_branch,    at: [column_1_left, row], size: font_a
text_box @record.stake_district, at: [column_2_left, row], size: font_a 


# Personal Information
row = 581
text_box @record.member_or_couple,    at: [column_1_left, row], size: font_a
text_box @record.baptism_dates, at: [column_2_left, row], size: font_a
text_box @record.confirmation_dates, at: [column_3_left, row], size: font_a

row -= 25.5
text_box @record.address,    at: [column_1_left, row], size: font_a
text_box @record.phone_number, at: [column_3_left, row], size: font_a

# row -= 25.5
# leader = ".".ljust(45)
# bounding_box([column_1_left, row + 12], width: 480, height: 22) do
#   # transparent(0.5){ stroke_bounds }
#   text leader + @record.children_names_with_ages, size: font_a
# end

row -= 25.5
text_box @record.children_names_with_ages, at: [column_1_left, row], size: font_a

row -= 25.5
text_box @record.ward_council_representative_names, at: [column_1_left, row], size: font_a

row -= 25.5
text_box @record.home_teacher_names, at: [column_1_left, row], size: font_a

row -= 25.5 - 1.5
text_box @record.visiting_teacher_names, at: [column_1_left, row], size: font_a


# Within One Month after Baptism or Return to Activity  /  Date completed
row -= 22.5

%w[int-temple-prep int-aaronic-priesthood gospel-principles preach-my-gospel].each do |label| 
  row -= 25.5
  # leader = ".".ljust(71)
  bounding_box([column_3_left, row + 12], width: 115, height: 11) do
    # transparent(0.5){ stroke_bounds }
    text @record.date_completed_for(label), size: font_a, align: :center
  end
end

# Within Six Months after Baptism or Return to Activity  /  Date completed
row -= 17

%w[church-calling sacrament-meeting family-group-sheet].each do |label| 
  row -= 25.5
  # leader = ".".ljust(71)
  bounding_box([column_3_left, row + 12], width: 115, height: 11) do
    # transparent(0.5){ stroke_bounds }
    text @record.date_completed_for(label), size: font_a, align: :center
  end
end

# As Soon as Appropriate during the First Year  /  Date completed
row -= 17

%w[melchizedek-priesthood temple-proxy-baptisms temple-prep].each do |label| 
  row -= 25.5
  # leader = ".".ljust(71)
  bounding_box([column_3_left, row + 12], width: 115, height: 11) do
    # transparent(0.5){ stroke_bounds }
    text @record.date_completed_for(label), size: font_a, align: :center
  end
end

# When Prepared, but Not before One Year following Baptism  /  Date completed
row -= 17

%w[endowed temple-sealing].each do |label| 
  row -= 25.5
  # leader = ".".ljust(71)
  bounding_box([column_3_left, row + 12], width: 115, height: 11) do
    # transparent(0.5){ stroke_bounds }
    text @record.date_completed_for(label), size: font_a, align: :center
  end
end

