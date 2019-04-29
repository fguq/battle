※ このファイルはオンラインコミュニティ「TechCommit」の課題のひとつです。

#### 【勇者と魔王の戦い】オブジェクト指向の基礎確認

要件：RPGのような戦いを表現してみましょう。

【満たすべき仕様】 
言語はオブジェクト指向言語で好きなもので作成してください。 
勇者と魔王はそれぞれHP（体力）と攻撃力を持ちます。 
相互に攻撃し合い、お互いに相手の攻撃力分のダメージを受けるものとします。 
（攻撃した側の攻撃力分、相手のHPが減るものとします。） 
勇者と魔王をclass及びインスタンスで表現し、下記の実行結果の表示イメージのように動作するプログラムを作成してください。 
継承関係や関数（メソッド）の作り方は自由とします。

【実行時の表示イメージ：Rubyの場合】 

``` 
$ ruby battle.rb 
戦闘開始！

勇者：HP30 攻撃力15 
魔王：HP40 攻撃力9

勇者の攻撃！魔王に15のダメージ 
魔王の攻撃！勇者に9のダメージ

勇者：HP21 攻撃力15 
魔王：HP25 攻撃力9

勇者の攻撃！魔王に15のダメージ 
魔王の攻撃！勇者に9のダメージ

勇者：HP12 攻撃力15 
魔王：HP10 攻撃力9

勇者の攻撃！魔王に15のダメージ

魔王は倒れた。 
世界に平和が訪れた。 
$ 
```

【作成のポイント】 
・初期のHPや攻撃力は固定でかまいません。 
・勇者から攻撃を始めるのは固定でかまいません。 
・どちらかのHPが「ゼロになった時点で」バトルは終了します。（例えば勇者の攻撃時点で魔王は倒れていたら魔王は攻撃できません） 
・勇者が倒れたパターンと魔王が倒れたパターンの表示結果を用意しましょう。

【ステップアップ】 
・余裕があれば一定確率でミス（専用表示でHPが減らない）が発生、一定確率でクリティカルアタック（専用表示で相手の減るHP量が1.5倍）が発生するように機能追加してください。

技術レベル： 普通

推奨技術： オブジェクト指向言語
