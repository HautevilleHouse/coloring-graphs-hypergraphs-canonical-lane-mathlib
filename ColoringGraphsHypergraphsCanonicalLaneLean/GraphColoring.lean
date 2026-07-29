import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

structure GraphPackage where
  vertices : Type u
  edges : Set (Set vertices)
  finiteVertices : Fintype vertices
  simpleGraph : Prop

def GraphChromatinNumber {G : GraphPackage} (coloring : G.vertices → Nat) : Prop :=
  ∀ (u : G.vertices) (v : G.vertices), {u, v} ∈ G.edges → coloring u ≠ coloring v

structure ChromaticPolynomialPackage {G : GraphPackage} where
  polynomial : ℕ → ℤ
  evaluations : Prop

def GraphColoringClosed {G : GraphPackage} : Prop :=
  G.simpleGraph ∧ ∃ (k : ℕ), GraphChromatinNumber (fun _ : G.vertices => 0)

theorem graph_simple_graph_closed {G : GraphPackage} (h : G.simpleGraph) : GraphColoringClosed G := by
  refine And.intro h ?_
  refine Exists.intro 1 ?_
  intro u v h_edge
  exact by
    have : {u, v} ∈ G.edges := h_edge
    simp at this

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse