# create an admin User and three registered Users.
admin = User.create! email: 'danger@epfl.ch', password: 'password', name: 'Danger RG', role: 'admin'
user1 = User.create! email: 'lydia@epfl.ch', password: 'password', name: 'Lydia'
user2 = User.create! email: 'olivia@epfl.ch', password: 'password', name: 'Olivia'
user2 = User.create! email: 'herbert@epfl.ch', password: 'password', name: 'Herbert'
