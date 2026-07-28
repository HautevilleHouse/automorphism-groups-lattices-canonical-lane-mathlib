import canonicalLaneMathlib.AdmissibleClass

/-!
# Lattice Structure Package
-/

namespace HautevilleHouse
namespace AutomorphismGroupsLatticesCanonicalLaneLean

structure AutomorphismLatticeObject where
  underlyingGroup : Type u
  automorphismGroup : Subgroup (Aut underlyingGroup)
  lattice : Set (Subgroup underlyingGroup)
  closedUnderAutomorphisms : Prop
  inclusionPreserving : Prop
  conclusion : closedUnderAutomorphisms ∧ inclusionPreserving

def LatticeClosed (O : AutomorphismLatticeObject) : Prop :=
  O.closedUnderAutomorphisms ∧ O.inclusionPreserving

structure LatticeStructurePackage where
  object : AutomorphismLatticeObject
  latticeOperationsDefined : Prop
  meetJoinPreserved : Prop
  latticeOperationsDefinedClosed : latticeOperationsDefined
  meetJoinPreservedClosed : meetJoinPreserved

def LatticeStructureClosed (L : LatticeStructurePackage) : Prop :=
  L.latticeOperationsDefined ∧ L.meetJoinPreserved

theorem lattice_structure_closed_from_evidence (L : LatticeStructurePackage) (E : L.latticeOperationsDefined ∧ L.meetJoinPreserved) : LatticeStructureClosed L := by
  exact And.intro E.1 E.2

end AutomorphismGroupsLatticesCanonicalLaneLean
end HautevilleHouse