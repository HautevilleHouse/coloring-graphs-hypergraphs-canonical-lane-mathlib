import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ColoringGraphsHypergraphsCanonicalLaneLean.GraphColoringBasics

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

structure ChromaticNumberPackage (G : GraphColoringPackage) where
  chromaticNumber : ℕ
  minimalColorSet : Type v
  existsColoringWithChromaticNumber : ∃ (coloring : G.vertexSet → minimalColorSet),
    (∀ (u v : G.vertexSet), (u, v) ∈ G.edgeSet → coloring u ≠ coloring v) ∧
    Fintype.card minimalColorSet = chromaticNumber
  minimality : ∀ (k : ℕ), k < chromaticNumber → ¬ ∃ (coloring : G.vertexSet → Fin k),
    (∀ (u v : G.vertexSet), (u, v) ∈ G.edgeSet → coloring u ≠ coloring v)

structure ChromaticNumberEvidence {G : GraphColoringPackage}
    (C : ChromaticNumberPackage G) where
  existsColoringClosed : C.existsColoringWithChromaticNumber
  minimalityClosed : C.minimality

def ChromaticNumberClosed {G : GraphColoringPackage}
    (C : ChromaticNumberPackage G) : Prop :=
  C.existsColoringWithChromaticNumber ∧ C.minimality

theorem chromatic_number_closed_from_evidence {G : GraphColoringPackage}
    (C : ChromaticNumberPackage G) (E : ChromaticNumberEvidence C) :
    ChromaticNumberClosed C := by
  exact And.intro E.existsColoringClosed E.minimalityClosed

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse