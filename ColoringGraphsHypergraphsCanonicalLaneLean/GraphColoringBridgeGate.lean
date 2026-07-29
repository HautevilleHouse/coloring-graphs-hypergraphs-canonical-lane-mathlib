import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  graphColoringClosed A.object.graphColoring

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact graph_coloring_closed A.object.graphColoring

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse