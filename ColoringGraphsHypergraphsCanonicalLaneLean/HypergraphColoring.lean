import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

structure HypergraphColoringPackage where
  vertexSet : Type u
  hyperedgeSet : Set (Set vertexSet)
  colorSet : Type v
  properColoring : vertexSet → colorSet
  properCondition : ∀ (e : Set vertexSet), e ∈ hyperedgeSet → ∃ (u v : vertexSet), u ∈ e ∧ v ∈ e ∧ properColoring u ≠ properColoring v

structure HypergraphColoringEvidence (H : HypergraphColoringPackage) where
  properConditionClosed : H.properCondition

def HypergraphColoringClosed (H : HypergraphColoringPackage) : Prop :=
  H.properCondition

theorem hypergraph_coloring_closed_from_evidence (H : HypergraphColoringPackage)
    (E : HypergraphColoringEvidence H) : HypergraphColoringClosed H := by
  exact E.properConditionClosed

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse