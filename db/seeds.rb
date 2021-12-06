# frozen_string_literal: true

# Schools
school_attrs = [
  { name: 'Eagle', location: 'Mountain' },
  { name: 'Bear', location: 'Forest' },
  { name: 'Wolf', location: 'Khaer-Morchen' },
  { name: 'Snake', location: 'South desert' }
]

schools = School.create! school_attrs

# Sword Types
sword_type_attrs = [
  { material: 'Iron' },
  { material: 'Silver' }
]

sword_types = SwordType.create! sword_type_attrs

# Swords
sword_attrs = [
  { sword_type: sword_types.sample, name: 'Sadvik', min_damage: Random.rand(1..5), max_damage: Random.rand(10..100) },
  { sword_type: sword_types.sample, name: 'Swedik', min_damage: Random.rand(1..5), max_damage: Random.rand(10..100) },
  { sword_type: sword_types.sample, name: 'Ranbem', min_damage: Random.rand(1..5), max_damage: Random.rand(10..100) },
  { sword_type: sword_types.sample, name: 'Tadren', min_damage: Random.rand(1..5), max_damage: Random.rand(10..100) },
  { sword_type: sword_types.sample, name: 'Munder', min_damage: Random.rand(1..5), max_damage: Random.rand(10..100) },
  { sword_type: sword_types.sample, name: 'Derven', min_damage: Random.rand(1..5), max_damage: Random.rand(10..100) }
]

Sword.create! sword_attrs

# Witchers
witcher_attrs = [
  { name: 'Geralt', nickname: 'the White Wolf', age: 95, sword: Sword.find(1), location: 'Rivia',
    school: schools.sample },
  { name: 'Ciri', nickname: 'the Sivlerhead', age: 16, sword: Sword.find(2), location: 'Monastery',
    school: schools.sample },
  { name: 'Aiden', nickname: 'the Cat', age: 78, sword: Sword.find(3), location: 'South', school: schools.sample },
  { name: 'Berengar', nickname: 'the Winter', age: 88, sword: Sword.find(4), location: 'Khaer-Morchen',
    school: schools.sample },
  { name: 'Vesemir', nickname: 'the Elder', age: 157, sword: Sword.find(5), location: 'Khaer-Morchen',
    school: schools.sample }
]

Witcher.create! witcher_attrs

# Users
elder_attrs = [
  { name: 'teacher', nickname: 'Elder', email: 'email_1@witcher.com', password: 'simplepass', is_elder: true },
  { name: 'developer', nickname: 'Elder', email: 'email_2@witcher.com', password: 'simplepass', is_elder: true }
]

regular_attrs = [
  { name: 'student_1', nickname: 'Regular', email: 'email_3@witcher.com', password: 'simplepass' },
  { name: 'student_2', nickname: 'Regular', email: 'email_4@witcher.com', password: 'simplepass' },
  { name: 'student_3', nickname: 'Regular', email: 'email_5@witcher.com', password: 'simplepass' },
  { name: 'student_4', nickname: 'Regular', email: 'email_6@witcher.com', password: 'simplepass' },
  { name: 'student_5', nickname: 'Regular', email: 'email_7@witcher.com', password: 'simplepass' }
]

User.create! elder_attrs + regular_attrs
