module Inflections
  ActiveSupport::Inflector.inflections(:nl) do |inflect|
    inflect.clear

    inflect.plural(/$/, 'en') 
    inflect.plural(/([aiou])$/i, '\1\'s')
    inflect.plural(/(e)$/i, '\1s')  
    inflect.plural(/(el|em|en|[^i]er|erd|aar|aard|um)$/i, '\1s')
    inflect.plural(/aa([^aeiou])$/i, 'a\1en')
    inflect.plural(/ee([^aeiou])$/i, 'e\1en')
    inflect.plural(/oo([^aeiou])$/i, 'o\1en')
    inflect.plural(/uu([^aeiou])$/i, 'u\1en')
    inflect.plural(/(man)$/i, 'mannen')
    inflect.plural(/(cus)$/i, 'ci')
    inflect.plural(/(eum)$/i, 'ea')

    inflect.singular(/en$/i, '')
    inflect.singular(/\'s$/i, '')
    inflect.singular(/es$/i, 'e')
    inflect.singular(/([^aeiou])([aeiou])([^aeiou])en$/i, '\1\2\2\3')
    inflect.singular(/(el|em|en|[^i]er|erd|aar|aard|um)s$/i, '\1')
    inflect.singular(/(mannen|lui)$/i, 'man')
    inflect.singular(/(ci)$/i, 'cus')
    inflect.singular(/(ea)$/i, 'eum')

    inflect.irregular('ei', 'eieren')
    inflect.irregular('wandelaar', 'wandelaars')
    inflect.irregular('dag', 'dagen')
  end
end
