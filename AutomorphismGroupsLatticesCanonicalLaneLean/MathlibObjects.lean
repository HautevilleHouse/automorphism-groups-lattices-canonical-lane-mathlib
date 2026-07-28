import Mathlib.GroupTheory.Subgroup

namespace HautevilleHouse
namespace AutomorphismGroupsLatticesCanonicalLaneLean

structure AutGroupLatticeAdmittedObject where
  G : Type u
  [groupG : Group G]
  automorphismGroup : Type v
  [groupAut : Group automorphismGroup]
  subgroupLattice : Set (Subgroup G)
  latticeIsModular : Prop
  conclusion : latticeIsModular

def AutGroupLatticeWitnessClosed (O : AutGroupLatticeAdmittedObject) : Prop :=
  O.latticeIsModular

end AutomorphismGroupsLatticesCanonicalLaneLean
end HautevilleHouse