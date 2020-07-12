require "./db/lib/import"

namespace :import_csv do
  desc "「aws_text_data.csv」 を 「aws_texts」 テーブルにインポートするタスク"

  task aws_texts: :environment do
    
    Import.csv_data(path: "db/csv_data/aws_text_data.csv")

    puts "インポート処理を開始"
    
    begin
      AwsText.transaction do
        AwsText.create!(list)
      end
      puts "インポート完了！！"
    rescue => e
      puts "インポートに失敗！！「エラー内容： #{e}」"
    end
  end
end
