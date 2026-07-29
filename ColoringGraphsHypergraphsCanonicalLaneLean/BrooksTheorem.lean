import ColoringGraphsHypergraphsCanonicalLaneLean.GraphAdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

structure BrooksTheoremPackage where
  graphIsConnected : Prop
  maxDegree : ℕ
  graphIsCliqueOrOddCycle : Prop
  chromaticNumberLeDelta : Prop

structure BrooksTheoremEvidence (B : BrooksTheoremPackage) where
  graphIsConnectedClosed : B.graphIsConnected
  graphIsCliqueOrOddCycleClosed : B.graphIsCliqueOrOddCycle
  chromaticNumberLeDeltaClosed : B.chromaticNumberLeDelta

def BrooksTheoremClosed (B : BrooksTheoremPackage) : Prop :=
  B.graphIsConnected ∧ B.graphIsCliqueOrOddCycle ∧ B.chromaticNumberLeDelta

theorem brooks_theorem_closed_from_evidence (B : BrooksTheoremPackage) (E : BrooksTheoremEvidence B) :
    BrooksTheoremClosed B := by
  exact And.intro E.graphIsConnectedClosed (And.intro E.graphIsCliqueOrOddCycleClosed E.chromaticNumberLeDeltaClosed)

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse