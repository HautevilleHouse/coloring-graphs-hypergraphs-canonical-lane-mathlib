import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

structure GreedyColoringAlgorithm where
  vertexOrder : List (GraphColoring.VertexSet)
  colorUsed : GraphColoring.ColorSet → Prop
  algorithmCorrect : ∀ (G : GraphColoring), graphColoringClosed G

def GreedyColoringAlgorithmClosed (A : GreedyColoringAlgorithm) : Prop :=
  A.algorithmCorrect

theorem greedy_coloring_algorithm_closed (A : GreedyColoringAlgorithm) : GreedyColoringAlgorithmClosed A := by
  exact A.algorithmCorrect

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse