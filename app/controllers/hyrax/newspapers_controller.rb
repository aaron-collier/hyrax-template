# Generated via
#  `rails generate hyrax:work Newspaper`

module Hyrax
  class NewspapersController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::Newspaper
  end
end
