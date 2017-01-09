require_relative 'spec_helper'

describe Menu do
  let(:menu) { Menu.new }

  describe '.initialize' do
    it 'initialize without error' do
      expect { menu.menu }.not_to raise_error
    end
    it 'initialize goes wrong' do
      expect { menu.menu(bad, thing, happend) }.to raise_error
    end
    context 'create new object without errors' do
      it { expect(menu).to be_an_instance_of(Menu) }
    end
  end
  describe '.to_s' do
    it 'call without errors' do
      expect { menu.to_s }.not_to raise_error
    end
    context 'type should be a String' do
      it { expect(menu.to_s).to be_a(String) }
    end
  end
  describe '.clear' do
    it 'call without errors' do
      expect { menu.clear }.not_to raise_error
    end
  end
end
