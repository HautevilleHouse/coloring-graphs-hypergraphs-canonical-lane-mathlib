import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

def ConstrainedColoringClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_coloring_endgame (A : AdmissibleClass) : ConstrainedColoringClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse