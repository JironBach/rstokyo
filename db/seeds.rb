# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

MasterAge.create([
	{ value: '１０代・女性' },
	{ value: '１０代・男性' },
	{ value: '２０代・女性' },
	{ value: '２０代・男性' },
	{ value: '３０代・女性' },
	{ value: '３０代・男性' },
	{ value: '４０代・女性' },
	{ value: '４０代・男性' },
	{ value: '５０代・女性' },
	{ value: '５０代・男性' },
	{ value: '６０代・女性' },
	{ value: '６０代・男性' },
	{ value: '７０代～・女性' },
	{ value: '７０代～・男性' },
])

MasterJob.create([
	{ value: '学生' },
	{ value: '会社役員' },
	{ value: '会社員' },
	{ value: '会社員（管理職）' },
	{ value: '公務員' },
	{ value: '自営' },
	{ value: '医師･弁護士･税理士など' },
	{ value: 'アルバイト' },
	{ value: '無職' },
	{ value: 'その他' },
])

MasterTheme.create([
	{ value: '賃貸マンション・アパート・一戸建て' },
	{ value: 'シェアハウス・ゲストハウス' },
	{ value: '事務所・商業・店舗物件' },
	{ value: '老人ホーム、高齢者住宅' },
	{ value: 'その他賃貸' },
	{ value: '隣人・近隣住民・シェアメイト' },
	{ value: '仲介業者・大家' },
	{ value: '街、店舗、店員' },
	{ value: '不動産サイト' },
	{ value: '不動産一般' },
])

