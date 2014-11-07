require 'spec_helper'

RSpec.describe TransliterateParameterizer do

  describe '.parameterize' do

    context "normal English: I'm He-Man!" do

      let(:text) { "I'm He-Man!"}
      let(:expected) { 'i-m-he-man' }

      subject { described_class.parameterize text }
      
      it 'parameterized: all lowerscore and dash' do
        expect(subject).to eq expected  
      end

    end

    context "with underscore: I'm He_Man!" do
      let(:text) { "I'm He_Man!"}
      
      context 'default behaviour' do
        let(:expected) { 'i-m-he-man' }

        subject { described_class.parameterize text }
        
        it do
          expect(subject).to eq expected  
        end

      end

      context 'passing false as second parameter' do      
        let(:expected) { 'i-m-he_man' }

        subject { described_class.parameterize text, false }
        
        it do
          expect(subject).to eq expected  
        end

      end

    end

  end

end