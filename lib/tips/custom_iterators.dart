class Family extends Iterable {
  Set<Person> persons;
  Family(this.persons);
  @override
  Iterator get iterator => persons.iterator;
}

class Person {
  FamilyRelation relation;

  Person.brother() : relation = FamilyRelation.brother;
  Person.mother() : relation = FamilyRelation.mother;
  Person.father() : relation = FamilyRelation.father;
  Person.sister() : relation = FamilyRelation.sister;
  Person.friend() : relation = FamilyRelation.friend;
}

enum FamilyRelation { mother, father, sister, brother, friend }

void main(List<String> args) {
  var persons = <Person>{
    Person.brother(),
    Person.father(),
    Person.mother(),
    Person.sister(),
    Person.friend(),
  };

  var family = Family(persons);

  for (var person in family) {
    print(person.runtimeType);
  }
}
