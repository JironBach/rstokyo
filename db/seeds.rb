# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

MasterAgeGender.first_or_create([
	{ id: 1, value: '１０代・女性' },
	{ id: 2, value: '１０代・男性' },
	{ id: 3, value: '２０代・女性' },
	{ id: 4, value: '２０代・男性' },
	{ id: 5, value: '３０代・女性' },
	{ id: 6, value: '３０代・男性' },
	{ id: 7, value: '４０代・女性' },
	{ id: 8, value: '４０代・男性' },
	{ id: 9, value: '５０代・女性' },
	{ id: 10, value: '５０代・男性' },
	{ id: 11, value: '６０代・女性' },
	{ id: 12, value: '６０代・男性' },
	{ id: 13, value: '７０代～・女性' },
	{ id: 14, value: '７０代～・男性' },
])

MasterJob.first_or_create([
	{ id: 1, value: '学生' },
	{ id: 2, value: '会社役員' },
	{ id: 3, value: '会社員' },
	{ id: 4, value: '会社員（管理職）' },
	{ id: 5, value: '公務員' },
	{ id: 6, value: '自営' },
	{ id: 7, value: '医師･弁護士･税理士など' },
	{ id: 8, value: 'アルバイト' },
	{ id: 9, value: '無職' },
	{ id: 10, value: 'その他' },
])

MasterTheme.first_or_create([
	{ id: 1, value: '賃貸マンション・アパート・一戸建て' },
	{ id: 2, value: 'シェアハウス・ゲストハウス' },
	{ id: 3, value: '事務所・商業・店舗物件' },
	{ id: 4, value: '老人ホーム、高齢者住宅' },
	{ id: 5, value: 'その他賃貸' },
	{ id: 6, value: '隣人・近隣住民・シェアメイト' },
	{ id: 7, value: '仲介業者・大家' },
	{ id: 8, value: '街、店舗、店員' },
	{ id: 9, value: '不動産サイト' },
	{ id: 10, value: '不動産一般' },
])

MasterAge.first_or_create([
	{ id: 1, value: '～２２歳' },
	{ id: 2, value: '２３歳～２７歳' },
	{ id: 3, value: '２８歳～３２歳' },
	{ id: 4, value: '３３歳～３７歳' },
	{ id: 5, value: '３８歳～４２歳' },
	{ id: 6, value: '４３歳～４９歳' },
	{ id: 7, value: '５０代' },
	{ id: 8, value: '６０代～' },
])

MasterLiveTerm.first_or_create([
	{ id: 1, value: '期限なし' },
	{ id: 2, value: '３ヶ月以内' },
	{ id: 3, value: '６ヶ月以内' },
	{ id: 4, value: '１年以内' },
	{ id: 5, value: '２年以内' },
])

MasterTatemonoClass.first_or_create([
  { id: 1, value: 'マンション' },
  { id: 2, value: 'アパート' },
  { id: 3, value: '一戸建て' },
  { id: 4, value: 'シェアハウス' },
  { id: 5, value: '事務所・商業・店舗物件' },
  { id: 6, value: 'その他賃貸' },
])

MasterMadori.first_or_create([
  { id: 1, value: '1ルーム' },
  { id: 2, value: '1K' },
  { id: 3, value: '1DK(+S)' },
  { id: 4, value: '1LDK(+S)' },
  { id: 5, value: '2K' },
  { id: 6, value: '2DK(+S)' },
  { id: 7, value: '2LDK(+S)' },
  { id: 8, value: '3K' },
  { id: 9, value: '3DK(+S)' },
  { id: 10, value: '3LDK(+S)' },
  { id: 11, value: '4K～' },
])

MasterRecruitGender.first_or_create([
	{ id: 1, value: '男女問わず' },
	{ id: 2, value: '女性のみ' },
	{ id: 3, value: '男性のみ' },
])

MasterOwnerKubun.first_or_create([
	{ id: 1, value: 'オーナー様' },
	{ id: 2, value: '不動産会社・管理会社様' },
	{ id: 3, value: 'その他' },
])

MasterContactInformation.first_or_create([
	{ id: 1, value: '電話' },
	{ id: 2, value: 'メール' },
])

MasterCommutingTime.first_or_create([
  { id: 1, value: '10分以内' },
  { id: 2, value: '20分以内' },
  { id: 3, value: '30分以内' },
  { id: 4, value: '40分以内' },
  { id: 5, value: '50分以内' },
  { id: 6, value: '1時間以内' },
  { id: 7, value: '1時間半以内' },
  { id: 8, value: '2時間以内' },
])

MasterHopeRrent.first_or_create([
  { id: 1, value: '3万～3.5万円' },
  { id: 2, value: '3.5万～4万円' },
  { id: 3, value: '4万～4.5万円' },
  { id: 4, value: '4.5万～5万円' },
  { id: 5, value: '5万～5.5万円' },
  { id: 6, value: '5.5万～6万円' },
  { id: 7, value: '6万～6.5万円' },
  { id: 8, value: '6.5万～7万円' },
  { id: 9, value: '7万～7.5万円' },
  { id: 10, value: '7.5万～8万円' },
  { id: 11, value: '8万～8.5万円' },
  { id: 12, value: '8.5万～9万円' },
  { id: 13, value: '9万～9.5万円' },
  { id: 14, value: '9.5万～10万円' },
  { id: 15, value: '10万～10.5万円' },
  { id: 16, value: '10.5万～11万円' },
  { id: 17, value: '11万～11.5万円' },
  { id: 18, value: '11.5万～12万円' },
  { id: 19, value: '12万～12.5万円' },
  { id: 20, value: '12.5万～13万円' },
  { id: 21, value: '13万～13.5万円' },
  { id: 22, value: '13.5万～14万円' },
  { id: 23, value: '14万～14.5万円' },
  { id: 24, value: '14.5万～15万円' },
  { id: 25, value: '15万～20万円' },
  { id: 26, value: '20万～30万円' },
  { id: 27, value: '30万～40万円' },
  { id: 28, value: '40万～50万円' },
  { id: 29, value: '50万～100万円' },
  { id: 30, value: '100万～' },
])

MasterDesiredNumber.first_or_create([
  { id: 1, value: '１人' },
  { id: 2, value: '２人' },
  { id: 3, value: '３人' },
  { id: 4, value: '４人' },
  { id: 5, value: '５人' },
  { id: 6, value: '６人以上' },
])
