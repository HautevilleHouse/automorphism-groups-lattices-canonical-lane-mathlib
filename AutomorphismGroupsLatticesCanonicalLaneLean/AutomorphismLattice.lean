import HautevilleHouse.AutomorphismGroupsLatticesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AutomorphismGroupsLatticesCanonicalLaneLean

structure AutomorphismLatticePackage where
  underlyingGroup : Type u
  latticeStructure : Set (Set (underlyingGroup → underlyingGroup))
  closedUnderComposition : Prop
  closedUnderInverse : Prop
  containsIdentity : Prop
  joinClosed : Prop
  meetClosed : Prop

structure AutomorphismLatticeEvidence (A : AutomorphismLatticePackage) where
  closedUnderCompositionClosed : A.closedUnderComposition
  closedUnderInverseClosed : A.closedUnderInverse
  containsIdentityClosed : A.containsIdentity
  joinClosedClosed : A.joinClosed
  meetClosedClosed : A.meetClosed

def AutomorphismLatticeClosed (A : AutomorphismLatticePackage) : Prop :=
  A.closedUnderComposition ∧ A.closedUnderInverse ∧ A.containsIdentity ∧ A.joinClosed ∧ A.meetClosed

theorem automorphism_lattice_closed_from_evidence (A : AutomorphismLatticePackage) (E : AutomorphismLatticeEvidence A) : AutomorphismLatticeClosed A := by
  exact And.intro E.closedUnderCompositionClosed
    (And.intro E.closedUnderInverseClosed
      (And.intro E.containsIdentityClosed
        (And.intro E.joinClosedClosed E.meetClosedClosed)))

end AutomorphismGroupsLatticesCanonicalLaneLean
end HautevilleHouse