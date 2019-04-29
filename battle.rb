class Character
  attr_reader :name
  attr_accessor :hit_point
  attr_accessor :attack_point

  def initialize(name, hit_point, attack_point)
    @name = name
    @hit_point = hit_point
    @attack_point = attack_point
  end

  # ステータス表示
  def output_status
    puts "#{@name} : HP#{@hit_point} 攻撃力#{@attack_point}"
  end

end

# 主人公側の処理
class Hero < Character
  def hero_attack 
  end
end


# 敵側の処理
class Enemy < Character
  def enemy_attack
  end
end
# キャラクターを設定
hero = Hero.new("勇者", 30, 8)
enemy = Enemy.new("魔王", 40, 4)

puts "戦闘開始！"
puts "\n"


# 繰り返し戦闘処理
while hero.hit_point > 0 && enemy.hit_point > 0 

  # ステータス表示
  puts "----------------------------"
  hero.output_status
  enemy.output_status
  puts "\n"

  # 自分のターン
  case rand(10)
  when 0
    puts "#{hero.name}の攻撃！クリティカルヒット！！#{enemy.name}に#{hero.attack_point * 2}のダメージ！"
    enemy.hit_point = enemy.hit_point - (hero.attack_point * 2 )
  when 9
    puts "#{hero.name}の攻撃！......ミス！#{enemy.name}にダメージを与えられなかった！"
  else
    puts "#{hero.name}の攻撃！#{enemy.name}に#{hero.attack_point}のダメージ！"
    enemy.hit_point = enemy.hit_point - hero.attack_point
  end

  # 敵のターン
  if enemy.hit_point <= 0
    break
  elsif rand(10) == 9
    puts "#{enemy.name}の攻撃！......ミス！#{hero.name}はダメージを受けなかった！"
  else
    puts "#{enemy.name}の攻撃！#{hero.name}に#{enemy.attack_point}のダメージ！"
    hero.hit_point = hero.hit_point - enemy.attack_point
  end

end


# 戦闘結果判定
if hero.hit_point > enemy.hit_point
  puts "\n"
  puts "#{enemy.name}を倒した！"
else
  puts "\n"
  puts "#{hero.name}は負けてしまった..."
end
