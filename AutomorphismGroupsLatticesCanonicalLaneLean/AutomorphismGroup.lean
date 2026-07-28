import canonicalLaneMathlib.AdmissibleClass
import AutomorphismGroupsLatticesCanonicalLaneLean.LatticeStructure

/-!
# Automorphism Group Package
-/

namespace HautevilleHouse
namespace AutomorphismGroupsLatticesCanonicalLaneLean

structure AutomorphismGroupPackage where
  G : Type u
  aut : Aut G
  completeLattice : Prop
  galoisConnection : Prop
  completeLatticeClosed : completeLattice
  galoisConnectionClosed : galoisConnection

def AutomorphismGroupClosed (A : AutomorphismGroupPackage) : Prop :=
  A.completeLattice ∧ A.galoisConnection

theorem automorphism_group_closed_from_evidence (A : AutomorphismGroupPackage) (E : A.completeLattice ∧ A.galoisConnection) : AutomorphismGroupClosed A := by
  exact And.intro E.1 E.2

end AutomorphismGroupsLatticesCanonicalLaneLean
end HautevilleHouse