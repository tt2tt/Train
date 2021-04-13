# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ユーザー
# user = User.new(email: 'ttt@ttt.com', password: 'tttttt', name: "田中太朗", phone_number: 11111111111, address: "東京", emergency_contact: 22222222222, relationship: "母親", mynumber: 111111111111, account: "テスト支店(111) (普通)1111111",pension_number: 1111111111)
# user.save!

# 案件
# Matter.create(contractor: "テスト株式会社",name: "テスト案件", price: 40, width_up: 200, width_under: 150, user_id: 1)

# 所属
# Organization.create(afiliation: "SES事業部", basic_salary: 200000, allowances: 0, insurance_number: 0, user_id: 1)

# 現場勤怠
# ContractorAttendance.create(year: 2020, month: 12, total_time: 144,  basic_time: 8, user_id: 1)

# ContractorAttendance.create(year: 2021, month: 3, total_time: 152,  basic_time: 8, user_id: 1)

# ContractorAttendance.create(year: 2021, month: 4, total_time: 150,  basic_time: 8, user_id: 1)

# 給与
# Pay.create(year: 2020, month: 12, basic: 200000, exception_allowance: 0, position_allowance: 0, overtime_allowance: 0,  expenses: 0, total_fee: 200000, user_id: 1 )

# Pay.create(year: 2021, month: 3, basic: 220000, exception_allowance: 0, position_allowance: 0, overtime_allowance: 0,  expenses: 10000, total_fee: 230000, user_id: 1 )

# Pay.create(year: 2021, month: 4, basic: 220000, exception_allowance: 0, position_allowance: 0, overtime_allowance: 0,  expenses: 20000, total_fee: 240000, user_id: 1 )

# 控除
# Deduction.create(year: 2020, month: 12, health_insurance: 10000, care_insurance: 0, pension: 0, employment_insurance: 0, income_tax: 0, residents_tax: 0, other: 0, total_fee: 10000, user_id: 1)

# Deduction.create(year: 2021, month: 3, health_insurance: 20000, care_insurance: 0, pension: 0, employment_insurance: 0, income_tax: 0, residents_tax: 0, other: 0, total_fee: 20000, user_id: 1)

# Deduction.create(year: 2021, month: 4, health_insurance: 20000, care_insurance: 10000, pension: 0, employment_insurance: 0, income_tax: 0, residents_tax: 0, other: 0, total_fee: 30000, user_id: 1)
