import canonicalLaneMathlib.AdmissibleClass

/-!
# Automorphism Group Lattice Package

This module defines the formal package for automorphism group lattices.
-/

namespace HautevilleHouse
namespace AutomorphismGroupsLatticesCanonicalLaneLean

structure AutomorphismGroupLatticePackage where
  latticeObject : Type u
  automorphismGroup : Type v
  groupAction : Prop
  latticeStructurePreserved : Prop
  automorphismGroupClosed : Prop

structure AutomorphismGroupLatticeEvidence (P : AutomorphismGroupLatticePackage) where
  groupActionClosed : P.groupAction
  latticeStructurePreservedClosed : P.latticeStructurePreserved
  automorphismGroupClosedClosed : P.automorphismGroupClosed

def AutomorphismGroupLatticeClosed (P : AutomorphismGroupLatticePackage) : Prop :=
  P.groupAction ∧ P.latticeStructurePreserved ∧ P.automorphismGroupClosed

theorem automorphism_group_lattice_closed_from_evidence
    (P : AutomorphismGroupLatticePackage) (E : AutomorphismGroupLatticeEvidence P) :
    AutomorphismGroupLatticeClosed P := by
  exact And.intro E.groupActionClosed
    (And.intro E.latticeStructurePreservedClosed E.automorphismGroupClosedClosed)

end AutomorphismGroupsLatticesCanonicalLaneLean
end HautevilleHouse