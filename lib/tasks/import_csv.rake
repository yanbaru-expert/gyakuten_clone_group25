require "import"

namespace :import_csv do
  desc "「aws_text_data.csv」 を 「aws_texts」 テーブルにインポートするタスク"

  task aws_texts: :environment do
    aws_csv_data_list = Import.csv_data(path: "db/csv_data/aws_text_data.csv")

    puts "インポート処理を開始"

    begin
      AwsText.transaction do
        AwsText.create!(aws_csv_data_list)
      end
      puts "インポート完了！！"
    rescue => e
      puts "インポートに失敗！！「エラー内容： #{e}」"
    end
  end

  desc "「movie_data.csv」 を 「movies」 テーブルにインポートするタスク"
  task movies: :environment do
    movie_data_list = Import.csv_data(path: "db/csv_data/movie_data.csv")

    puts "インポート処理を開始"

    begin
      Movie.transaction do
        Movie.create!(movie_data_list)
      end
      puts "インポート完了！！"
    rescue => e
      puts "インポートに失敗！！「エラー内容： #{e}」"
    end
  end

  desc "「question_data.csv」を「questions」テーブルにimportするタスク"
  task questions: :environment do
    list = Import.csv_data(path: "db/csv_data/question_data.csv")
    puts "インポート処理を開始"
    begin
      Question.transaction do
        Question.create!(list)
      end
      puts "インポート完了!!"
    rescue => e
      puts "インポート失敗!! 「エラー内容 : #{e}」"
    end
  end

  desc "「line_data.csv」を「lines」テーブルにimportするタスク"
  task lines: :environment do
    list = Import.csv_data(path: "db/csv_data/line_data.csv")
    puts "インポート処理を開始"
    begin
      Line.transaction do
        Line.create!(list)
      end
      puts "インポート完了!!"
    rescue => e
      puts "インポート失敗!! 「エラー内容 : #{e}」"
    end
  end
end
