import ColoringGraphsHypergraphsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GraphColoringWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse