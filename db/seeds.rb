Category.create!([
  {title: 'Подорожі'},
  {title: "Одяг"},
  {title: "Таксі"},
  {title: "Кафе"},
  {title: "Магазини"},
  {title: "Інше"}
  ])
User.create!([
  {email: 'example@mail.com',
  password: '123456'}
  ])
Room.create!([
  {name: 'Груповий чат'}
  ])
Message.create!([
  {user_id: 1,
  room_id: 1,
  content: "Всім привіт, буду радий обмінюватися з вами списками витрат)"}
  ])
Expense.create!([
  {user_id: 1,
  category_id: 5,
  name: 'Продукти',
  sum: 200,
  description: "Хліб, молоко"},
  {user_id: 1,
  category_id: 2,
  name: 'Зимовий одяг',
  sum: 2000,
  description: "Куртка, взуття"}
  ])
