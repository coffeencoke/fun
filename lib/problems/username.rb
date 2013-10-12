module Problems
  # http://community.topcoder.com/tc?module=ProblemDetail&rd=5849&pm=2913
  class Username
    def self.new_member(existing_names, new_name)
      number = 0
      name = new_name
      found = true
      i = 0

      while found do
        if existing_names[i] == name
          number += 1
          i = 0
          name = "#{new_name}#{number}"
        elsif i == existing_names.size-1
          found = false
        else
          i += 1
        end
      end

      name
    end
  end
end

