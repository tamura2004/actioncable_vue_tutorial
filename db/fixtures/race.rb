Race.delete_all
Ability.delete_all
RacesInitialAbility.delete_all

abilities_names = %w(筋力 武勇 敏捷 耐久 器用 魅力 知力 信仰 精神 記憶 観察 指導)

races_initial_abilities = [
  %w(人間 3D+7 3D+7 3D+7 3D+7 3D+7 3D+7 3D+7 3D+7 3D+7 3D+7 3D+7 3D+7),
  %w(エルフ 2D+8 3D+7 4D+6 2D+8 3D+7 4D+6 4D+6 2D+8 2D+8 3D+7 3D+7 4D+6),
  %w(アーラエ 2D+8 3D+7 3D+7 2D+8 3D+7 3D+7 3D+7 3D+7 3D+7 3D+7 3D+7 3D+7),
  %w(ドワーフ 4D+6 3D+7 2D+8 4D+6 4D+6 2D+8 2D+8 3D+7 3D+7 3D+7 3D+7 3D+7),
  %w(フェアリー 1D+3 3D+7 5D+5 1D+3 4D+6 5D+5 3D+7 3D+7 3D+7 3D+7 3D+7 3D+7),
  %w(ホビット 2D+8 3D+7 4D+6 4D+6 3D+7 3D+7 3D+7 3D+7 4D+6 2D+8 3D+7 2D+8),
  %w(ハーフエルフ 3D+7 3D+7 3D+7 2D+8 3D+7 4D+6 4D+6 2D+8 3D+7 3D+7 3D+7 3D+7),
  %w(ジャイアント 5D+5 3D+7 2D+8 5D+5 2D+8 3D+7 2D+8 3D+7 3D+7 2D+8 3D+7 3D+7),
  %w(キャットテイル 3D+7 3D+7 4D+6 3D+7 3D+7 4D+6 2D+8 2D+8 3D+7 2D+8 4D+6 3D+7),
  %w(フェイ 1D+9 3D+7 4D+6 1D+9 3D+7 4D+6 3D+7 3D+7 3D+7 3D+7 3D+7 3D+7),
  %w(レプタリアン 4D+6 3D+7 2D+8 3D+7 3D+7 1D+9 2D+8 3D+7 4D+6 3D+7 2D+8 2D+8),
  %w(シェイプチェンジャー 3D+7 3D+7 3D+7 3D+7 3D+7 3D+7 2D+8 2D+8 3D+7 2D+8 4D+6 3D+7),
  %w(マーマン 2D+8 2D+8 2D+8 2D+8 3D+7 4D+6 3D+7 3D+7 4D+6 3D+7 3D+7 3D+7),
  %w(ドックヘッド 3D+7 4D+6 3D+7 3D+7 2D+8 3D+7 2D+8 2D+8 3D+7 3D+7 4D+6 4D+6),
  %w(スネイクマン 3D+7 3D+7 3D+7 4D+6 4D+6 2D+8 3D+7 2D+8 3D+7 3D+7 2D+8 2D+8),
  %w(ケンタウロス 4D+6 3D+7 4D+6 4D+6 2D+8 3D+7 2D+8 3D+7 3D+7 2D+8 3D+7 3D+7),
  %w(バニー 2D+8 3D+7 5D+5 2D+8 4D+6 4D+6 2D+8 3D+7 3D+7 2D+8 4D+6 2D+8),
  %w(ミノタウロス 4D+6 4D+6 3D+7 4D+6 2D+8 2D+8 2D+8 4D+6 3D+7 2D+8 2D+8 3D+7),
  %w(ダンピール 4D+6 3D+7 4D+6 2D+8 3D+7 5D+5 3D+7 3D+7 3D+7 3D+7 3D+7 1D+9),
]

abilities_names.each_with_index do |name,id|
  Ability.seed do |s|
    s.id = id
    s.name = name
  end
end

races_initial_abilities.each_with_index do |values,id|
  name = values.shift
  Race.seed do |s|
    s.id = id
    s.name = name
  end

  values.each_with_index do |value,ability_id|
    RacesInitialAbility.seed do |s|
      s.race_id = id
      s.ability_id = ability_id
      s.value = value
    end
  end
end

