# Match Making: http://community.topcoder.com/stat?c=problem_statement&pm=2911&rd=5849
#

class MatchMaking
  def self.make_match(women, women_answers, men, men_answers, query_name)
    number_of_answers = women_answers[0].size

    create_objects(women, women_answers, men, men_answers)
    sort_people(women, men)
    establish_candidates(women, men, number_of_answers)
    pick_matches(women)

    match_for_woman_by_name(query_name, women)
  end

  def self.establish_candidates(women, men, number_of_answers)
    women.each do |woman|
      men.each do |man|
        next if man.matched?
        people = [woman, man]
        number_of_matches = Matcher.number_of_matches(*people)
        if number_of_matches == number_of_answers
          Matcher.match(*people)
          break
        else
          woman.candidates << Candidate.new(number_of_matches, people)
        end
      end
    end
  end

  def self.pick_matches(women)
    women.each do |woman|
      next if woman.matched?
      woman.sorted_candidates.each do |candidate|
        Matcher.match(*candidate.people) unless Matcher.matched?(*candidate.people)
      end
    end
  end

  def self.sort_people(*people)
    people.each do |p|
      p.sort_by!(&:name)
    end
  end

  def self.match_for_woman_by_name(query_name, women)
    women.find{|a| a.name == query_name }.match.name
  end

  def self.create_objects(women, women_answers, men, men_answers)
    women.each_with_index do |name, i|
      women[i] = Woman.new(name, women_answers[i])
      men[i] = Man.new(men[i], men_answers[i])
    end
  end

  class Matcher
    def self.matched?(*people)
      people.any?(&:matched?)
    end

    def self.match(person1, person2)
      person1.match = person2
      person2.match = person1
    end

    def self.number_of_matches(person1, person2)
      matching_answers(person1.answers, person2.answers).size
    end

    def self.matching_answers(answer_set_1, answer_set_2)
      answer_set_1.select.with_index do |answer, i|
        answer_set_2[i] == answer
      end
    end
  end

  class Person
    attr_reader :name, :answers, :match

    def initialize(name, answers)
      @name = name
      @answers = answers.split("")
    end

    def matched?
      !!match
    end

    def match=(person)
      @match = person
    end
  end

  class Man < Person
  end

  class Woman < Person
    attr_reader :candidates

    def sorted_candidates
      candidates.sort{|a,b| b.matches <=> a.matches }
    end

    def candidates
      @candidates ||= []
    end
  end

  class Candidate
    attr_reader :matches, :people

    def initialize(matches, people)
      @matches = matches
      @people = people
    end
  end
end
