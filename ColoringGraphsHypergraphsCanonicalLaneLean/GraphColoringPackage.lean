import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

structure GraphColoringPackage where
  graph : Type u
  vertexSet : Set graph
  edgeSet : Set (graph × graph)
  properColoringExists : Prop

def GraphColoringClosed (G : GraphColoringPackage) : Prop :=
  G.properColoringExists

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse