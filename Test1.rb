player = ["matsch","fujita","kazu","okura","kitawaki","nakano","ora","nishino","kaizuka","sakura","shirayama","shimizu","sumimoto","ito","ono","fukushima"]
cap = ["edo","shibata","nakazawa"]
@team_no = 3
@team_hash = Hash.new()

#キャプテンにチーム番号をふる
for x in 1..@team_no do
	@team_hash.store(cap[x-1].to_s,x)
end

#選手をシャッフル
player.shuffle!

#選手にチーム番号を振ってhashに追加
y = 1
player.each do |ply|
	if y > @team_no
		y = 1
	else
		@team_hash.store(ply,y)
		y += 1
	end
end

#teamごとに表示
for x in 1..@team_no do
	p @team_hash.select{|k,v| v==x}
end
