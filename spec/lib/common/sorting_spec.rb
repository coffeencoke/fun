module Common
  ARRAY = [1,6,4,5,7,9,4,22,34,6,2,1,423,12,5,8,32,2]
  EXPECTED = ARRAY.sort

  %w(insertion quick).each do |type|
    require_relative "../../../lib/common/sorting/#{type}_sort"


    describe "sorting using #{type} sort" do
      subject { eval("#{type[0].upcase}#{type[1..-1]}Sort").new(ARRAY.clone).call }

      it { should == EXPECTED }
    end
  end
end
