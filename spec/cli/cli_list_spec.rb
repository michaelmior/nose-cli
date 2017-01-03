module NoSE
  module CLI
    describe NoSECLI do
      include_context 'CLI setup'

      context 'when running the list command' do
        it 'can list cost models' do
          run_simple 'nose list cost'
          expect(last_command_stopped.output).to include "dummy\n"
        end

        it 'can list backends' do
          run_simple 'nose list backend'
          expect(last_command_stopped.output).to include "file\n"
        end

        it 'fails on an invalid type' do
          run 'nose list foo'
          expect(last_command_stopped).not_to be_successfully_executed
        end
      end
    end
  end
end
