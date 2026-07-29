import ColoringGraphsHypergraphsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def coloringProjection : Projection GraphColoringEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem coloring_projection_idempotent (x : GraphColoringEndgameState) :
    coloringProjection.toFun (coloringProjection.toFun x) = coloringProjection.toFun x := by
  exact coloringProjection.idempotent x

end ColoringGraphsHypergraphsCanonicalLaneLean
end HautevilleHouse