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
    # 下記のコードが何をしているかを説明してください・・・（L=2）

    next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..fill_last_number]
  end

    # 下記のコードが何をしているかを説明してください・・・（M=5）
  if next_seat_candidate.count == next_seat_candidate.uniq.count
    # 下記のコードが何をしているかを説明してください・・・（N=7）
    if ((seating_number + users) - 1) > seats_count
      # 下記の二行のコードが何をしているかを説明してください・・・（O=17）
      empty_seat = empty_seat - [*1..fill_last_number]
      empty_seat = empty_seat - [*seating_number..seats_count]
    else
      # 下記のコードが何をしているかを説明してください・・・（P=1）
      empty_seat = empty_seat - [*seating_number..fill_last_number]
    end
  else puts "座席が空いていません"
  end
end

# 下記のコードが何をしているかを説明してください・・・（Q=16）
puts "#{seats_count - empty_seat.count}席埋まっています。"

埋まっていない、かつ、末尾の番号が席の数を超えていなければ、そのまま来店した人数分のシートを埋めていきます（１）
最後の人間が着席した席の番号が、最初に定義された座席の数を超えていなかったら、そのまま計算します（２）
もしも最後の人間が着席した席の番号が、最初に定義された座席の数を超えていたら、最初の席の数に戻して再計算します（円卓だから）（３）
二行目以降の行（グループの人数と着席開始座席番号）の入力を受け付けます（４）
来店したグループの座りたい席がすでに埋まっていないかをif文で確認します（埋まっていなければif内の処理をします）（５）
来店したグループの人数を変数に代入します（６）
来店したグループが席につけるかどうかを確認するための配列を、if文で条件分けしながら定義します。（７）
最初の行（座席数と入店するグループの総数）の入力を受け付けます（８）
来店したグループの最後の人間が着席した席の番号を変数に代入します（９）
座席を配列で作成します（１０）
何組のグループが入店するのか、その数を変数に入れておきます（１１）
来店したグループの着席開始座席番号を変数に代入します（１２）
座席の数を変数に入れておきます（１３）
最後の人間が着席した席の番号が、最初に定義された座席の数を超えていた場合と、そうでない場合とで座席の埋め方をif文で分岐させます（１４）
入店するグループの数だけループさせます（１５）
最終的に席に座っている人数を出力します（１６）
埋まっていない、かつ、末尾の番号が最初に定義された座席の数を超えていれば、最初の席の番号〜末尾の番号と、着席開始座席番号〜最後の席の番号、の二回に分けて席を埋めていきます（１７）
