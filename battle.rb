class Character
  attr_reader :name
  attr_accessor :hit_point, :attack_point

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
  def hero_attack(receiver) 
    case rand(10)
    when 0
      puts "#{name}の攻撃！クリティカルヒット！！#{receiver.name}に#{attack_point * 2}のダメージ！"
      receiver.hit_point = receiver.hit_point - (attack_point * 2 )
    when 9
      puts "#{name}の攻撃！......ミス！#{receiver.name}にダメージを与えられなかった！"
    else
      puts "#{name}の攻撃！#{receiver.name}に#{attack_point}のダメージ！"
      receiver.hit_point = receiver.hit_point - attack_point
    end
  end
end


# 敵側の処理
class Enemy < Character
  def enemy_attack(receiver)
    if rand(10) == 9
      puts "#{name}の攻撃！......ミス！#{receiver.name}はダメージを受けなかった！"
    else
      puts "#{name}の攻撃！#{receiver.name}に#{attack_point}のダメージ！"
      receiver.hit_point = receiver.hit_point - attack_point
    end
  end
end

# キャラクターを設定
hero = Hero.new("勇者", 30, 8)
enemy = Enemy.new("魔王", 40, 4)

puts "戦闘開始！"

# 繰り返し戦闘処理
while hero.hit_point > 0 && enemy.hit_point > 0 

  # ステータス表示
  puts "\n----------------------------"
  puts "\n"
  hero.output_status
  enemy.output_status
  puts "\n"

  # 自分のターン
  hero.hero_attack(enemy)
  # 敵のターン
  if enemy.hit_point <= 0
    break
  else
    enemy.enemy_attack(hero)
  end
end


# 戦闘結果判定
if hero.hit_point > enemy.hit_point
  puts "\n#{enemy.name}を倒した！"
else
  puts "\n#{hero.name}は負けてしまった..."
end
