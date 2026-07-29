import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

structure GraphColoring where
  VertexSet : Type
  EdgeSet : Set (VertexSet × VertexSet)
  ColorSet : Type
  coloring : VertexSet → ColorSet
  properCondition : ∀ v w, (v, w) ∈ EdgeSet → coloring v ≠ coloring w

def graphColoringClosed (G : GraphColoring) : Prop :=
  G.properCondition

theorem graph_coloring_closed (G : GraphColoring) : graphColoringClosed G := by
  exact G.properCondition

structure HypergraphColoring where
  VertexSet : Type
  HyperedgeSet : Set (Set VertexSet)
  ColorSet : Type
  coloring : VertexSet → ColorSet
  properCondition : ∀ e ∈ HyperedgeSet, ∃ v w ∈ e, v ≠ w ∧ coloring v ≠ coloring w

def hypergraphColoringClosed (H : HypergraphColoring) : Prop :=
  H.properCondition

theorem hypergraph_coloring_closed (H : HypergraphColoring) : hypergraphColoringClosed H := by
  exact H.properCondition

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse