type entity
    as integer d
end type

type holder
    as uinteger count
    as entity ptr n = new entity[2]
    
    declare sub addThing(t as entity ptr)
end type

sub holder.addThing(ent as entity ptr)
    n[count] = *ent
    count+=1
end sub

dim as entity ptr t1, t2
t1 = new entity[1]
t2 = new entity[1]

t1->d = 5
t2->d = 123

dim as holder h1, h2

h1.addThing(t1)
h1.addThing(t2)

print h1.count

print h1.n[0].d
print h1.n[1].d

h2.addThing(

sleep()