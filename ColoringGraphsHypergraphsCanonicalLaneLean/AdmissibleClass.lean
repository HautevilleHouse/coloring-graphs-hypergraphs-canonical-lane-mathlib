import ColoringGraphsHypergraphsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

structure AdmissibleClass where
  object : GraphColoringAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GraphColoringWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse