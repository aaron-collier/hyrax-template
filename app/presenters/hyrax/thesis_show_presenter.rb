module Hyrax
  class ThesisShowPresenter < Hyrax::WorkShowPresenter
    delegate :date_submitted, :handle, :college, :department, :university,
             :degree_level, :degree_name, :abstract, :advisor, :committee_member,
             :geographical_area, :time_period, :date_available, :date_copyright,
             :date_issued, :sponsor, :rights_access,
             :alternative_title, :statement_of_responsibility, to: :solr_document

  end
end
