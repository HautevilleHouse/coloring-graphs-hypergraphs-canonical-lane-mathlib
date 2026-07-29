import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

structure GraphAdmittedObject where
  vertexSet : Type u
  edgeSet : Type v
  chromaticNumber : ℕ
  coloringExists : Prop
  conclusion : coloringExists

def graphWitnessClosed (O : GraphAdmittedObject) : Prop :=
  O.coloringExists

structure HypergraphAdmittedObject where
  vertexSet : Type u
  hyperedgeSet : Type v
  chromaticNumber : ℕ
  coloringExists : Prop
  conclusion : coloringExists

def hypergraphWitnessClosed (O : HypergraphAdmittedObject) : Prop :=
  O.coloringExists

structure AdmissibleClass where
  object : GraphAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  graphWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse