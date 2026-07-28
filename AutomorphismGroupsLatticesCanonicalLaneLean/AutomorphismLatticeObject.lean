import HautevilleHouse.AutomorphismGroupsLatticesCanonicalLaneLean.AutomorphismLattice

namespace HautevilleHouse
namespace AutomorphismGroupsLatticesCanonicalLaneLean

structure AutomorphismLatticeAdmittedObject where
  space : Type u
  automorphismGroup : Type v
  lattice : AutomorphismLatticePackage
  fullLatticeCondition : Prop
  conclusion : fullLatticeCondition

def AutomorphismLatticeWitnessClosed (O : AutomorphismLatticeAdmittedObject) : Prop :=
  O.fullLatticeCondition

end AutomorphismGroupsLatticesCanonicalLaneLean
end HautevilleHouse