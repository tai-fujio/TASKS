# 下記のコードが何をしているかを説明してください・・・（A=8）
seats_and_groups = gets.split(/\s/)

# 下記のコードが何をしているかを説明してください・・・（B=10）,empty_seatで空いている席の配列を取得する
empty_seat = [*1..(seats_and_groups[0].to_i)]
# 下記のコードが何をしているかを説明してください・・・（C=13）,seats_countで席を一つずつ数えた最後の値（＝全席数）を取得する
seats_count = empty_seat.count
# 下記のコードが何をしているかを説明してください・・・（D=11）,number_of_visitorsで来客した組の総数の値を取得する
number_of_visitors = seats_and_groups[1].to_i

# 下記のコードが何をしているかを説明してください・・・（E=15）
[*1..number_of_visitors].each do
  # 下記のコードが何をしているかを説明してください・・・（F=4）
  used_seats = gets.split(/\s/)
  # 下記のコードが何をしているかを説明してください・・・（G=6）,usersで来客した組のうちの1組の構成人数の値を取得する
  users = used_seats[0].to_i
  # 下記のコードが何をしているかを説明してください・・・（H=12）,seating_numberで来客した組のうちの1組が座った席のうち、一番番号が小さい席の値を取得する
  seating_number = used_seats[1].to_i
  # 下記のコードが何をしているかを説明してください・・・（I=9）,fill_last_number来客した組のうちの1組が座った席のうち、一番番号が大きい席の値を取得する
  fill_last_number = ((seating_number + users) - 1)


  # 下記のコードが何をしているかを説明してください・・・（J=14）
  if fill_last_number > seats_count
    # 下記のコードが何をしているかを説明してください・・・（K=3）
    fill_last_number = fill_last_number - seats_count
    next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..seats_count] + [*1..fill_last_number]
  else
    # 下記のコードが何をしているかを説明してください・・・（L=17）

    next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..fill_last_number]
  end

    # 下記のコードが何をしているかを説明してください・・・（M=5）
  if next_seat_candidate.count == next_seat_candidate.uniq.count
    # 下記のコードが何をしているかを説明してください・・・（N=7）
    if ((seating_number + users) - 1) > seats_count
      # 下記の二行のコードが何をしているかを説明してください・・・（O=3）
      empty_seat = empty_seat - [*1..fill_last_number]
      empty_seat = empty_seat - [*seating_number..seats_count]
    else
      # 下記のコードが何をしているかを説明してください・・・（P=2）
      empty_seat = empty_seat - [*seating_number..fill_last_number]
    end
  else puts "座席が空いていません"
  end
end

# 下記のコードが何をしているかを説明してください・・・（Q=16）
puts "#{seats_count - empty_seat.count}席埋まっています。"
