import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ColoringGraphsHypergraphsCanonicalLaneLean.ChromaticNumber

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

structure PerfectGraphPackage (G : GraphColoringPackage) where
  inducedSubgraphColoring : ∀ (S : Set G.vertexSet), let H : GraphColoringPackage := {
      vertexSet := S,
      edgeSet := { e ∈ G.edgeSet | e.1 ∈ S ∧ e.2 ∈ S },
      colorSet := G.colorSet,
      properColoring := λ v => G.properColoring v,
      properCondition := by
        intro u v h
        have : (u, v) ∈ G.edgeSet := h.1
        exact G.properCondition u v this
    } in GraphColoringClosed H
  chromaticNumberEqualsCliqueNumber : ChromaticNumberPackage G → Prop

structure PerfectGraphEvidence {G : GraphColoringPackage}
    (P : PerfectGraphPackage G) where
  inducedSubgraphColoringClosed : P.inducedSubgraphColoring
  chromaticNumberEqualsCliqueNumberClosed : ∀ (C : ChromaticNumberPackage G), P.chromaticNumberEqualsCliqueNumber C

def PerfectGraphClosed {G : GraphColoringPackage}
    (P : PerfectGraphPackage G) : Prop :=
  P.inducedSubgraphColoring

theorem perfect_graph_closed_from_evidence {G : GraphColoringPackage}
    (P : PerfectGraphPackage G) (E : PerfectGraphEvidence P) :
    PerfectGraphClosed P := by
  exact E.inducedSubgraphColoringClosed

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse