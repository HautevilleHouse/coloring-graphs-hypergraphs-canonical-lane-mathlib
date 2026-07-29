import ColoringGraphsHypergraphsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GraphColoringSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GraphColoringAdmittedObject where
  space : GraphColoringSpace
  graphFinite : Prop
  chromaticNumber : Nat
  coloringExists : Prop
  minimalColoring : Prop
  conclusion : coloringExists

structure GraphColoringEndgameState where
  object : GraphColoringAdmittedObject

def GraphColoringWitnessClosed (O : GraphColoringAdmittedObject) : Prop :=
  O.coloringExists

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse