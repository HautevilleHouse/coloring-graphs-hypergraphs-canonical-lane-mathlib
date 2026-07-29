import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

structure HypergraphColoringPackage where
  hypergraph : Type u
  vertexSet : Set hypergraph
  hyperedgeSet : Set (Set hypergraph)
  properColoringExists : Prop

def HypergraphColoringClosed (H : HypergraphColoringPackage) : Prop :=
  H.properColoringExists

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse