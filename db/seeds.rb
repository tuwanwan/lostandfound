# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Type.delete_all

book = Type.create(title: 'book')
clothing = Type.create(title: 'clothing')
cellphone = Type.create(title: 'cellphone')
computer = Type.create(title: 'computer')


Item.delete_all

Item.create!([  {title: 'lost1', description:%{description1},owner:'loser1', type_id:book.id},
                {title: 'lost2', description:%{description2},owner:'loser2', type_id:book.id},
                {title: 'lost3', description:%{description3},owner:'loser3', type_id:book.id},
                {title: 'lost4', description:%{description4},owner:'loser4', type_id:book.id},
                {title: 'lost5', description:%{description5},owner:'loser5', type_id:book.id},
                {title: 'lost6', description:%{description6},owner:'loser6', type_id:clothing.id},
                {title: 'lost7', description:%{description7},owner:'loser7', type_id:clothing.id},
                {title: 'lost8', description:%{description8},owner:'loser8', type_id:clothing.id},
                {title: 'lost9', description:%{description9},owner:'loser9', type_id:clothing.id},
                {title: 'lost10', description:%{description10},owner:'loser10', type_id:clothing.id},
                {title: 'lost11', description:%{description11},owner:'loser11', type_id:cellphone.id},
                {title: 'lost12', description:%{description12},owner:'loser12', type_id:cellphone.id},
                {title: 'lost13', description:%{description13},owner:'loser13', type_id:cellphone.id},
                {title: 'lost14', description:%{description14},owner:'loser14', type_id:cellphone.id},
                {title: 'lost15', description:%{description15},owner:'loser15', type_id:cellphone.id},
                {title: 'lost16', description:%{description16},owner:'loser16', type_id:computer.id},
                {title: 'lost17', description:%{description17},owner:'loser17', type_id:computer.id},
                {title: 'lost18', description:%{description18},owner:'loser18', type_id:computer.id},
                {title: 'lost19', description:%{description19},owner:'loser19', type_id:computer.id},
                {title: 'lost20', description:%{description20},owner:'loser20', type_id:computer.id},


                {title: 'found1', description:%{description1},owner:'finder1', type_id:book.id},
                {title: 'found2', description:%{description2},owner:'finder2', type_id:book.id},
                {title: 'found3', description:%{description3},owner:'finder3', type_id:book.id},
                {title: 'found4', description:%{description4},owner:'finder4', type_id:book.id},
                {title: 'found5', description:%{description5},owner:'finder5', type_id:book.id},
                {title: 'found6', description:%{description6},owner:'finder6', type_id:clothing.id},
                {title: 'found7', description:%{description7},owner:'finder7', type_id:clothing.id},
                {title: 'found8', description:%{description8},owner:'finder8', type_id:clothing.id},
                {title: 'found9', description:%{description9},owner:'finder9', type_id:clothing.id},
                {title: 'found10', description:%{description10},owner:'finder10', type_id:clothing.id},
                {title: 'found11', description:%{description11},owner:'finder11', type_id:cellphone.id},
                {title: 'found12', description:%{description12},owner:'finder12', type_id:cellphone.id},
                {title: 'found13', description:%{description13},owner:'finder13', type_id:cellphone.id},
                {title: 'found14', description:%{description14},owner:'finder14', type_id:cellphone.id},
                {title: 'found15', description:%{description15},owner:'finder15', type_id:cellphone.id},
                {title: 'found16', description:%{description16},owner:'finder16', type_id:computer.id},
                {title: 'found17', description:%{description17},owner:'finder17', type_id:computer.id},
                {title: 'found18', description:%{description18},owner:'finder18', type_id:computer.id},
                {title: 'found19', description:%{description19},owner:'finder19', type_id:computer.id},
                {title: 'found20', description:%{description20},owner:'finder20', type_id:computer.id},
                ])



