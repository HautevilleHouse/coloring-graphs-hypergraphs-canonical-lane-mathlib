import ColoringGraphsHypergraphsCanonicalLaneLean.AdmissibleClass

/-!
# Chromatic Number Lemma Package
-/

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

structure ChromaticNumberPackage (G : GraphColoringAdmittedObject) where
  graphFinite : Prop
  coloringAssigned : Prop
  lowerBound : Prop
  upperBound : Prop
  brooksTheoremApplicable : Prop

structure ChromaticNumberEvidence (G : GraphColoringAdmittedObject) (C : ChromaticNumberPackage G) where
  graphFiniteClosed : C.graphFinite
  coloringAssignedClosed : C.coloringAssigned
  lowerBoundClosed : C.lowerBound
  upperBoundClosed : C.upperBound
  brooksTheoremApplicableClosed : C.brooksTheoremApplicable

def ChromaticNumberClosed (G : GraphColoringAdmittedObject) (C : ChromaticNumberPackage G) : Prop :=
  C.graphFinite ∧ C.coloringAssigned ∧ C.lowerBound ∧ C.upperBound ∧ C.brooksTheoremApplicable

theorem chromatic_number_closed_from_evidence (G : GraphColoringAdmittedObject) (C : ChromaticNumberPackage G) (E : ChromaticNumberEvidence G C) : ChromaticNumberClosed G C := by
  exact And.intro E.graphFiniteClosed (And.intro E.coloringAssignedClosed (And.intro E.lowerBoundClosed (And.intro E.upperBoundClosed E.brooksTheoremApplicableClosed)))

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse