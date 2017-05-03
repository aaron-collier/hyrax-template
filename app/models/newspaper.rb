# Generated via
#  `rails generate hyrax:work Newspaper`
class Newspaper < ActiveFedora::Base
  include ::Hyrax::WorkBehavior
  include ::Hyrax::BasicMetadata

  self.indexer = NewspaperIndexer
  # Change this to restrict which works can be added as a child.
  # self.valid_child_concerns = []
  validates :title, presence: { message: 'Your work must have a title.' }

  self.human_readable_type = 'Newspaper'

  property :date_accessioned, predicate: ::RDF::Vocab::DC.date, multiple: false
  property :provenance, predicate: ::RDF::Vocab::DC.provenance

  property :handle, predicate: ::RDF::Vocab::PREMIS.ContentLocation do |index|
    index.as :stored_searchable, :facetable
  end

  property :sponsor, predicate: ::RDF::Vocab::MARCRelators.spn do |index|
    index.as :stored_searchable, :facetable
  end

end
