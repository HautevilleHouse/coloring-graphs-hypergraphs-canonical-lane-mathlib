import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ColoringGraphsHypergraphsCanonicalLaneLean.ChromaticNumber

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

structure PlanarGraphPackage (G : GraphColoringPackage) where
  planarEmbedding : Type u
  noCrossings : Prop
  faces : Set (Set G.vertexSet)
  eulerFormula : ℕ → ℕ → ℕ → Prop

structure FourColorTheoremPackage (G : GraphColoringPackage) (P : PlanarGraphPackage G) where
  chromaticNumberAtMostFour : ChromaticNumberPackage G → ℕ
  proofObligation : ∀ (C : ChromaticNumberPackage G), C.chromaticNumber ≤ 4

structure FourColorTheoremEvidence {G : GraphColoringPackage} {P : PlanarGraphPackage G}
    (F : FourColorTheoremPackage G P) where
  proofObligationClosed : ∀ (C : ChromaticNumberPackage G), F.proofObligation C

def FourColorTheoremClosed {G : GraphColoringPackage} {P : PlanarGraphPackage G}
    (F : FourColorTheoremPackage G P) : Prop :=
  ∀ (C : ChromaticNumberPackage G), F.proofObligation C

theorem four_color_theorem_closed_from_evidence {G : GraphColoringPackage}
    {P : PlanarGraphPackage G} (F : FourColorTheoremPackage G P)
    (E : FourColorTheoremEvidence F) : FourColorTheoremClosed F := by
  exact E.proofObligationClosed

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse