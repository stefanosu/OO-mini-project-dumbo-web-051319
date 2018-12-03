RSpec.describe Allergen do
  let(:flour) { Ingredient.new('Flour') }
  let(:pepper) { Ingredient.new('Pepper') }
  let(:carrot) { Ingredient.new('Carrot') }

  let(:shinji) { User.new('Shinji') }
  let(:asuka) { User.new('Asuka') }
  let(:rei) { User.new('Rei') }

  let(:a_sf) { Allergen.new(shinji, flour) }
  let(:a_ap) { Allergen.new(asuka, pepper) }
  let(:a_rc) { Allergen.new(rei, carrot) }

  context '.all' do
    it 'should have all instances' do
      expected = [a_sf, a_ap, a_rc]
      expect(Allergen.all).to eql(expected)
    end
  end

  context 'ingredient' do
    it 'should have ingredient gettr' do
      expect(a_sf.ingredient).to eql(flour)
    end

    it 'should not have ingredient setter' do
      expect { a_sf.ingredient = double }.to raise_error(NoMethodError)
    end
  end

  context 'user' do
    it 'should have user gettr' do
      expect(a_sf.user).to eql(shinji)
    end

    it 'should not have user setter' do
      expect{ a_sf.user = double }.to raise_error(NoMethodError)
    end

  end
end