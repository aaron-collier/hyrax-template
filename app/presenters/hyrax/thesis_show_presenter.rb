module Hyrax
  class ThesisShowPresenter < Hyrax::WorkShowPresenter
    delegate :handle, :abstract, :date_available, :date_issued, :sponsor, to: :solr_document

  end
end
