import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

structure GreedyColoringPackage where
  graph : GraphPackage
  vertexOrder : List graph.vertices
  colorsAssigned : graph.vertices → ℕ
  greedyProper : Prop
  greedyChromatic : ℕ

def GreedyColoringClosed (G : GreedyColoringPackage) : Prop :=
  G.greedyProper ∧ G.greedyChromatic ≥ 1

theorem greedy_coloring_closed (G : GreedyColoringPackage) (hProper : G.greedyProper) (hColor : G.greedyChromatic ≥ 1) : GreedyColoringClosed G := by
  exact And.intro hProper hColor

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse