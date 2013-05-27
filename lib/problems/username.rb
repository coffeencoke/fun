module Problems
  # http://community.topcoder.com/tc?module=ProblemDetail&rd=5849&pm=2913
  class Username
    def self.new_member(existing_names, new_name)
      number = 0
      name = new_name

      matches = []
      name_size = new_name.size

      existing_names.each do |existing_name|
        if existing_name[0..name_size-1] == name
          matches << existing_name
        end
      end

      matches.size.times do
        matches.each do |match|
          if match == name
            number += 1
            name = "#{new_name}#{number}"
            break
          end
        end
      end

      name
    end
  end
end

