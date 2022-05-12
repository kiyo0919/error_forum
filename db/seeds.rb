# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UsedTechnology.create!(
  [
    {
      name: 'HTML・CSS'
    },
    {
      name: 'Git'
    },
    {
      name: 'Ruby'
    },
    {
      name: 'RubyonRails'
    },
    {
      name: '設計'
    },
    {
      name: 'その他'
    }
    ]
  )

  error = Error.create!(
          title: "rspecテスト ほとんどのエラーでfill_in user[:name]",
          detail: "specテスト実行時に、ほとんどのエラーで **fill_in 'user[:name]'** というエラーが出ていた",
          learning_phase: 0,
          solution: "**原因**
                    名前ログイン機能が実装できていなかった。
                    手順通り名前ログインを実装後、 **fill_in 'user[:name]'** のエラーは消えた。
                    (画像はダミーです)",
          url: "http://example.com",
          mentor_name: "メンター太郎",
          used_technology_id: 4,
          mentor_id: 1,
  )
  #error.image.attach(io: File.open(Rails.root.join('app/assets/images/error_2.png')),filename: 'error_2.png')

  # Mentor.create!(
  #   email: "mentor_taro@test.com",
  #   name: "メンター太郎",
  #   is_active: true,
  #   password: "mentor_pass"
  # )