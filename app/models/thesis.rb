# Generated via
#  `rails generate hyrax:work Thesis`
class Thesis < ActiveFedora::Base
  include ::Hyrax::WorkBehavior
  include ::Hyrax::BasicMetadata

  self.indexer = ThesisIndexer
  # Change this to restrict which works can be added as a child.
  # self.valid_child_concerns = []
  validates :title, presence: { message: 'Your work must have a title.' }

  self.human_readable_type = 'Thesis'

  # Fields Added per SW-ETD-DataModel
  # Fields not included below are included by default

  property :date_submitted, predicate: ::RDF::Vocab::DC.date do |index|
    index.as :stored_searchable, :facetable
  end

  property :handle, predicate: ::RDF::Vocab::PREMIS.ContentLocation do |index|
    index.as :stored_searchable, :facetable
  end

  property :college, predicate: ::RDF::Vocab::SCHEMA.CollegeOrUniversity do |index|
    index.as :stored_searchable, :facetable
  end

  property :department, predicate: ::RDF::Vocab::SCHEMA.department do |index|
    index.as :stored_searchable, :facetable
  end

  property :university, predicate: ::RDF::Vocab::MARCRelators.dgg do |index|
    index.as :stored_searchable, :facetable
  end

  property :degree_level, predicate: ::RDF::Vocab::DC.educationLevel do |index|
    index.as :stored_searchable, :facetable
  end

  property :degree_name, predicate: ::RDF::Vocab::BIBO.degree do |index|
    index.as :stored_searchable, :facetable
  end

  property :abstract, predicate: ::RDF::Vocab::DC.abstract do |index|
    index.as :stored_searchable, :facetable
  end

  property :advisor, predicate: ::RDF::Vocab::MARCRelators.ths do |index|
    index.as :stored_searchable, :facetable
  end

  property :committee_member, predicate: ::RDF::Vocab::MARCRelators.ctb do |index|
    index.as :stored_searchable, :facetable
  end

  property :geographical_area, predicate: ::RDF::Vocab::DC.spatial do |index|
    index.as :stored_searchable, :facetable
  end

  property :time_period, predicate: ::RDF::Vocab::DC.temporal do |index|
    index.as :stored_searchable, :facetable
  end

  property :date_available, predicate: ::RDF::Vocab::DC.available do |index|
    index.as :stored_searchable, :facetable
  end

  property :date_copyright, predicate: ::RDF::Vocab::DC.dateCopyrighted do |index|
    index.as :stored_searchable, :facetable
  end

  property :date_issued, predicate: ::RDF::Vocab::DC.issued do |index|
    index.as :stored_searchable, :facetable
  end

  property :sponsor, predicate: ::RDF::Vocab::MARCRelators.spn do |index|
    index.as :stored_searchable, :facetable
  end

  property :rights_access, predicate: ::RDF::Vocab::DC.accessRights do |index|
    index.as :stored_searchable, :facetable
  end

  property :alternative_title, predicate: ::RDF::Vocab::DC.alternative do |index|
    index.as :stored_searchable, :facetable
  end

  property :statement_of_responsibility, predicate: ::RDF::Vocab::MARCRelators.rpy do |index|
    index.as :stored_searchable, :facetable
  end

  property :provenance, predicate: ::RDF::Vocab::DC.provenance
  property :date_accessioned, predicate: ::RDF::Vocab::DC.date, multiple: false

end
