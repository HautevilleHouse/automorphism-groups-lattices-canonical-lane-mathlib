import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphismGroupsLatticesCanonicalLaneLean.AutomorphismGroupsLatticesPackage

namespace HautevilleHouse
namespace AutomorphismGroupsLatticesCanonicalLaneLean

structure LatticeOperationsPackage {P : AutomorphismGroupsLatticePackage} where
  meetClosed : Prop
  joinClosed : Prop
  intersectionClosed : Prop
  commutatorClosed : Prop
  evidence : meetClosed ∧ joinClosed ∧ intersectionClosed ∧ commutatorClosed

def LatticeOperationsClosed {P : AutomorphismGroupsLatticePackage} (L : LatticeOperationsPackage) : Prop :=
  L.meetClosed ∧ L.joinClosed ∧ L.intersectionClosed ∧ L.commutatorClosed

theorem lattice_operations_closed_from_evidence
    {P : AutomorphismGroupsLatticePackage} (L : LatticeOperationsPackage) :
    LatticeOperationsClosed L := by
  exact L.evidence

end AutomorphismGroupsLatticesCanonicalLaneLean
end HautevilleHouse