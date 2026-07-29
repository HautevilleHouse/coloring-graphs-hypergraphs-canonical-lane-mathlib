import ColoringGraphsHypergraphsCanonicalLaneLean.GraphAdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  graphWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse