# create an admin User and three registered Users.
admin = User.create! email: 'danger@epfl.ch', password: 'password', name: 'Danger', role: 'admin'
user1 = User.create! email: 'lydia@epfl.ch', password: 'password', name: 'Lydia'
user2 = User.create! email: 'olivia@epfl.ch', password: 'password', name: 'Olivia'
user3 = User.create! email: 'herbert@epfl.ch', password: 'password', name: 'Herbert'

# create 5 Ideas per User.
1.upto(5) do |i|
  Idea.create!  title: "Idea for #{admin.name} #{i}", user: admin
  Idea.create!  title: "Idea for #{user1.name} #{i}", user: user1
  Idea.create!  title: "Idea for #{user2.name} #{i}", user: user2
  Idea.create!  title: "Idea for #{user3.name} #{i}", user: user3
end

admin.goals << user1.ideas.first
admin.goals << user2.ideas.first
admin.goals << user3.ideas.first
