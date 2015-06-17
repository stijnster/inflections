# encoding: utf-8

require 'test_helper'
require 'inflections/nl'

class TestEnglishInflections < Minitest::Test
  def test_regular_plurals
    assert_equal 'honden', 'hond'.pluralize(:nl)
    assert_equal 'hond', 'honden'.singularize(:nl)

    assert_equal 'dagen', 'dag'.pluralize(:nl)
    assert_equal 'dag', 'dagen'.singularize(:nl)

    assert_equal 'weekdagen', 'weekdag'.pluralize(:nl)
    assert_equal 'weekdag', 'weekdagen'.singularize(:nl)

    assert_equal 'daken', 'dak'.pluralize(:nl)
    assert_equal 'dak', 'daken'.singularize(:nl)

    assert_equal 'paden', 'pad'.pluralize(:nl)
    assert_equal 'pad', 'paden'.singularize(:nl)

    assert_equal 'testen', 'test'.pluralize(:nl)
    assert_equal 'test', 'testen'.singularize(:nl)

    assert_equal 'rivieren', 'rivier'.pluralize(:nl)
    assert_equal 'rivier', 'rivieren'.singularize(:nl)

    assert_equal 'stieren', 'stier'.pluralize(:nl)
    assert_equal 'stier', 'stieren'.singularize(:nl)

    assert_equal 'vlaaien', 'vlaai'.pluralize(:nl)
    assert_equal 'vlaai', 'vlaaien'.singularize(:nl)

    assert_equal 'koeien', 'koe'.pluralize(:nl)
    assert_equal 'koe', 'koeien'.singularize(:nl)
  end

  def test_vowel_s_apostrophe_rules
    assert_equal "oma's", 'oma'.pluralize(:nl)
    assert_equal 'oma', "oma's".singularize(:nl)

    assert_equal "ski's", 'ski'.pluralize(:nl)
    assert_equal 'ski', "ski's".singularize(:nl)

    assert_equal "radio's", 'radio'.pluralize(:nl)
    assert_equal 'radio', "radio's".singularize(:nl)

    assert_equal "radio's", 'radio'.pluralize(:nl)
    assert_equal 'radio', "radio's".singularize(:nl)

    assert_equal "menu's", 'menu'.pluralize(:nl)
    assert_equal 'menu', "menu's".singularize(:nl)

    assert_equal "collega's", 'collega'.pluralize(:nl)
    assert_equal 'collega', "collega's".singularize(:nl)
  end

  def test_vowel_regular_s_rules
    assert_equal 'breedtes', 'breedte'.pluralize(:nl)
    assert_equal 'breedte', 'breedtes'.singularize(:nl)

    assert_equal 'boetes', 'boete'.pluralize(:nl)
    assert_equal 'boete', 'boetes'.singularize(:nl)

    assert_equal 'boetes', 'boete'.pluralize(:nl)
    assert_equal 'boete', 'boetes'.singularize(:nl)


    assert_equal 'repetities', 'repetitie'.pluralize(:nl)
    assert_equal 'repetitie', 'repetities'.singularize(:nl)

    assert_equal 'visies', 'visie'.pluralize(:nl)
    assert_equal 'visie', 'visies'.singularize(:nl)

    assert_equal 'bamboes', 'bamboe'.pluralize(:nl)
    assert_equal 'bamboe', 'bamboes'.singularize(:nl)
  end

  def test_special_endings_s_rules
    assert_equal 'lepels', 'lepel'.pluralize(:nl)
    assert_equal 'lepel', 'lepels'.singularize(:nl)

    assert_equal 'bezems', 'bezem'.pluralize(:nl)
    assert_equal 'bezem', 'bezems'.singularize(:nl)

    assert_equal 'keukens', 'keuken'.pluralize(:nl)
    assert_equal 'keuken', 'keukens'.singularize(:nl)

    assert_equal 'wekkers', 'wekker'.pluralize(:nl)
    assert_equal 'wekker', 'wekkers'.singularize(:nl)

    assert_equal 'engerds', 'engerd'.pluralize(:nl)
    assert_equal 'engerd', 'engerds'.singularize(:nl)

    assert_equal 'gierigaards', 'gierigaard'.pluralize(:nl)
    assert_equal 'gierigaard', 'gierigaards'.singularize(:nl)

    assert_equal 'wandelaars', 'wandelaar'.pluralize(:nl)
    assert_equal 'wandelaar', 'wandelaars'.singularize(:nl)

    assert_equal 'geraniums', 'geranium'.pluralize(:nl)
    assert_equal 'geranium', 'geraniums'.singularize(:nl)

    assert_equal 'datums', 'datum'.pluralize(:nl)
    assert_equal 'datum', 'datums'.singularize(:nl)

    assert_equal 'startdata', 'startdatums'.pluralize(:nl)
    assert_equal 'startdatums', 'startdata'.singularize(:nl)
  end

  def test_special_endings_s_rules
    assert_equal 'lepels', 'lepel'.pluralize(:nl)
    assert_equal 'lepel', 'lepels'.singularize(:nl)

    assert_equal 'bezems', 'bezem'.pluralize(:nl)
    assert_equal 'bezem', 'bezems'.singularize(:nl)

    assert_equal 'keukens', 'keuken'.pluralize(:nl)
    assert_equal 'keuken', 'keukens'.singularize(:nl)

    assert_equal 'wekkers', 'wekker'.pluralize(:nl)
    assert_equal 'wekker', 'wekkers'.singularize(:nl)

    assert_equal 'engerds', 'engerd'.pluralize(:nl)
    assert_equal 'engerd', 'engerds'.singularize(:nl)

    assert_equal 'gierigaards', 'gierigaard'.pluralize(:nl)
    assert_equal 'gierigaard', 'gierigaards'.singularize(:nl)

    assert_equal 'wandelaars', 'wandelaar'.pluralize(:nl)
    assert_equal 'wandelaar', 'wandelaars'.singularize(:nl)

    assert_equal 'geraniums', 'geranium'.pluralize(:nl)
    assert_equal 'geranium', 'geraniums'.singularize(:nl)
  end

  def test_ending_with_double_vowels
    assert_equal 'palen', 'paal'.pluralize(:nl)
    assert_equal 'paal', 'palen'.singularize(:nl)

    assert_equal 'walen', 'waal'.pluralize(:nl)
    assert_equal 'waal', 'walen'.singularize(:nl)

    assert_equal 'tuinpalen', 'tuinpaal'.pluralize(:nl)
    assert_equal 'tuinpaal', 'tuinpalen'.singularize(:nl)

    assert_equal 'benen', 'been'.pluralize(:nl)
    assert_equal 'been', 'benen'.singularize(:nl)

    assert_equal 'hanen', 'haan'.pluralize(:nl)
    assert_equal 'haan', 'hanen'.singularize(:nl)
  end

  def test_ending_at_man
    assert_equal 'zeemannen', 'zeeman'.pluralize(:nl)
    assert_equal 'zeeman', 'zeemannen'.singularize(:nl)
    assert_equal 'zeeman', 'zeelui'.singularize(:nl)

    assert_equal 'groentemannen', 'groenteman'.pluralize(:nl)
    assert_equal 'groenteman', 'groentemannen'.singularize(:nl)

    assert_equal 'vakmannen', 'vakman'.pluralize(:nl)
    assert_equal 'vakman', 'vakmannen'.singularize(:nl)
    assert_equal 'vakman', 'vaklui'.singularize(:nl)
  end

  def test_latin_exceptions
    assert_equal 'politici', 'politicus'.pluralize(:nl)
    assert_equal 'politicus', 'politici'.singularize(:nl)

    assert_equal 'medici', 'medicus'.pluralize(:nl)
    assert_equal 'medicus', 'medici'.singularize(:nl)

    assert_equal 'musea', 'museum'.pluralize(:nl)
    assert_equal 'museum', 'musea'.singularize(:nl)
  end

  def test_irregulars
    assert_equal 'eieren', 'ei'.pluralize(:nl)
    assert_equal 'ei', 'eieren'.singularize(:nl)
  end
end
