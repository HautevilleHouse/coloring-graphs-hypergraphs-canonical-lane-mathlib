import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

structure GraphColoringPackage where
  vertexSet : Type u
  edgeSet : Set (vertexSet × vertexSet)
  colorSet : Type v
  properColoring : vertexSet → colorSet
  properCondition : ∀ (u v : vertexSet), (u, v) ∈ edgeSet → properColoring u ≠ properColoring v

structure GraphColoringEvidence (G : GraphColoringPackage) where
  properConditionClosed : G.properCondition

def GraphColoringClosed (G : GraphColoringPackage) : Prop :=
  G.properCondition

theorem graph_coloring_closed_from_evidence (G : GraphColoringPackage)
    (E : GraphColoringEvidence G) : GraphColoringClosed G := by
  exact E.properConditionClosed

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse