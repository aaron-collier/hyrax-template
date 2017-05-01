# Generated via
#  `rails generate hyrax:work FacultyWork`
module Hyrax
  class FacultyWorkForm < Hyrax::Forms::WorkForm
    self.model_class = ::FacultyWork
    self.terms += [:resource_type, :handle, :abstract, :date_available, :date_issued, :sponsor]
  end
end
