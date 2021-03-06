# frozen_string_literal: true

require "spec_helper"

module Decidim
  module Amendable
    describe AmendmentRejectedEvent do
      let!(:component) { create(:proposal_component) }
      let!(:amendable) { create(:proposal, component: component) }
      let!(:emendation) { create(:proposal, component: component) }
      let!(:amendment) { create :amendment, amendable: amendable, emendation: emendation }
      let(:amendable_type) { "proposal" }

      include_examples "amendment rejected event"
    end
  end
end
