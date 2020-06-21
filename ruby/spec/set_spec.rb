# to run:
# from parent folder
# $ rspec -fd

require_relative '../set'
module StrukturData
  RSpec.describe Set do
    before do
        @kosong = Set.new

        @satu = Set.new
        @satu.add "Ferrari"

        @banyak = Set.new
        @banyak.add "Ferrari"
        @banyak.add "Mercedes"
        @banyak.add "Lamborghini"
    end
    # it { expect(subject.empty?).to eql true}
    describe "#empty?" do
      it "check the collection" do
        expect(@kosong.empty?).to eq true
        expect(@satu.empty?).to eq false
        expect(@banyak.empty?).to eq false
      end
    end

    describe '#size' do
      it "return the size as added" do
        expect(@kosong.size).to eq 0
        expect(@satu.size).to eq 1
        expect(@banyak.size).to eq 3
      end
    end

    describe '#contains' do
      it "check whether the container contains previously added object" do
        expect(@kosong.contains "Ferrari").to eq false
        expect(@kosong.contains "Mercedes").to eq false

        expect(@satu.contains "Ferrari").to eq true
        expect(@satu.contains "Mercedes").to eq false

        expect(@banyak.contains "Ferrari").to eq true
        expect(@banyak.contains "Mercedes").to eq true
      end
    end

    describe '#add' do
      it "prevent duplicate" do
        foo = Set.new
        expect(foo.add "bar").to eq true
        expect(foo.add "bar").to eq false
      end
    end

    describe '#remove' do
      it "remove specified object" do
        expect(@banyak.contains "Ferrari").to eq true
        @banyak.remove("Ferrari")
        @banyak.remove("any string does not exist")
        expect(@banyak.contains "Ferrari").to eq false
        expect(@banyak.contains "Mercedes").to eq true

      end
    end
  end
end