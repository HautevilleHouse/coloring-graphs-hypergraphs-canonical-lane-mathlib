import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

structure ChromaticNumberPackage where
  graph : Type u
  chromaticNumber : ℕ
  lowerBound : ℕ
  upperBound : ℕ
  boundClosed : Prop

def ChromaticNumberClosed (C : ChromaticNumberPackage) : Prop :=
  C.boundClosed

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse