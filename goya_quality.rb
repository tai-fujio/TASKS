# データを受け取り、返却するCGIプログラムの起動
require 'cgi'
cgi2 = CGI.new

# データを受け取った後、HTMLの形式でレスポンスを返す
cgi2.out("type" => "text/html", "charset" => "UTF-8") {
  # 情報の目印とした"goya"のデータを cgi['goya']と言う記述で取り出し、ローカル変数に代入する
  get = cgi2['goya_quality']

  # HTMLでレスポンスを返却する
  "<html>
    <body>
      <h1>日別の不良ゴーヤ総数は下記になります</h1>
        #{get}
    </body>
  </html>"
}
