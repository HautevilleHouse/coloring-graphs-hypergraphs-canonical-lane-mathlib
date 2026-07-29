import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

structure EdgeColoringPackage where
  vertexSet : Type u
  edgeSet : Set (vertexSet × vertexSet)
  colorSet : Type v
  properEdgeColoring : (vertexSet × vertexSet) → colorSet
  domainCondition : Set.range properEdgeColoring ⊆ edgeSet
  properCondition : ∀ (e1 e2 : vertexSet × vertexSet), e1 ∈ edgeSet ∧ e2 ∈ edgeSet ∧ e1 ≠ e2 ∧
    (e1.1 = e2.1 ∨ e1.1 = e2.2 ∨ e1.2 = e2.1 ∨ e1.2 = e2.2) →
    properEdgeColoring e1 ≠ properEdgeColoring e2

structure EdgeColoringEvidence (E : EdgeColoringPackage) where
  domainConditionClosed : E.domainCondition
  properConditionClosed : E.properCondition

def EdgeColoringClosed (E : EdgeColoringPackage) : Prop :=
  E.domainCondition ∧ E.properCondition

theorem edge_coloring_closed_from_evidence (E : EdgeColoringPackage)
    (Ev : EdgeColoringEvidence E) : EdgeColoringClosed E := by
  exact And.intro Ev.domainConditionClosed Ev.properConditionClosed

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse