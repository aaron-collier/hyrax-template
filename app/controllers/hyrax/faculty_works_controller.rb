# Generated via
#  `rails generate hyrax:work FacultyWork`

module Hyrax
  class FacultyWorksController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::FacultyWork

    self.show_presenter = FacultyWorkShowPresenter
  end
end
