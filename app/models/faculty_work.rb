# Generated via
#  `rails generate hyrax:work FacultyWork`
class FacultyWork < ActiveFedora::Base
  include ::Hyrax::WorkBehavior
  include ::Hyrax::BasicMetadata

  self.indexer = FacultyWorkIndexer
  # Change this to restrict which works can be added as a child.
  # self.valid_child_concerns = []
  validates :title, presence: { message: 'Your work must have a title.' }

  self.human_readable_type = 'Faculty Work'

  property :handle, predicate: ::RDF::Vocab::PREMIS.ContentLocation do |index|
    index.as :stored_searchable, :facetable
  end

  property :date_available, predicate: ::RDF::Vocab::DC.available do |index|
    index.as :stored_searchable, :facetable
  end

  property :date_issued, predicate: ::RDF::Vocab::DC.issued do |index|
    index.as :stored_searchable, :facetable
  end

  property :sponsor, predicate: ::RDF::Vocab::MARCRelators.spn do |index|
    index.as :stored_searchable, :facetable
  end

  property :abstract, predicate: ::RDF::Vocab::DC.abstract do |index|
    index.as :stored_searchable, :facetable
  end

  property :provenance, predicate: ::RDF::Vocab::DC.provenance
  property :date_accessioned, predicate: ::RDF::Vocab::DC.date, multiple: false
  property :embargo_release_date, predicate: ::RDF::Vocab::DC.date, multiple: false

end
