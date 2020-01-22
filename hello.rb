# コンソールに「HelloWorld」を表示

greeting = "HelloWorld\n"
print greeting




# コンソールに1～10まで足した結果を表示してみよう。ただし、for文を使う事。
# eachではなくforを使いました。

def sum(n, m)
  s = 0
  for i in n..m
    s = s + i
  end
  print s
end

sum(1, 10)


# コンソールに「引数が0なら偽。引数が1なら真」と表示
# この場合は引数に0を取っているので偽

def num(n)
  if n == 0
  puts '偽'
  elsif n == 1
  puts '真'
  end
end

num(0)


# 任意の配列に値を詰め込んで、その内容をコンソールに表示
array = ["りんご", "バナナ", 2]
puts array[1]
# "バナナ"が出力


# Communicationというクラスを作ってみよう。
# greetというメソッドを定義してみよう。
# greetというメソッド内でHelloという言葉を受けたら、Helloと返す処理を実装

class Communication
  # greetというメソッド内でHelloという言葉を受けたら、Helloと返す
  def greet
    p "文字を入力してください"
    input = gets
    if input == "Hello\n"
    puts "Hello"
    else
      puts "Helloではありません"
    end
  end

  # 職場かどうかを判断するメソッドを作って、職場じゃなければ挨拶しない
  def workPlace
    p "職場ですか?"
    input = gets
    if input == "はい\n"
      puts "Hello"
    else
      puts ""
    end
  end

  # Communicationクラスに新しく話しかけてきた人が誰か(同僚とか上司とか)で応答を返すか、例外を返すような処理
  # 上司の時に例外を返す
  # 同僚の時は例外を返さない
  begin
    def businessPerson
      p "上司ですか同僚ですか?"
      input = gets
      if input ==  "上司\n"
        raise "上司なので無視します"
      elsif input == "同僚\n"
        puts "ようこそ"
      else
        puts "上司か同僚を入力してください"
      end
    end
  rescue

  end
end

# クラスを継承して新しいサブクラスを作ってみよう。
class WorkplaceCommunication < Communication
end

WorkplaceCommunication.new.workPlace

Communication.new.businessPerson
