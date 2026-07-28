import Mathlib.GroupTheory.Subgroup
import Mathlib.GroupTheory.GroupAction.Basic

namespace HautevilleHouse
namespace AutomorphismGroupsLatticesCanonicalLaneLean

structure AutGroupLatticePackage (G : Type u) [Group G] where
  automorphismGroup : Type v
  groupAut : Group automorphismGroup
  action : automorphismGroup → Subgroup G → Subgroup G
  subgroupLattice : Set (Subgroup G)
  closureUnderAction : ∀ (φ : automorphismGroup) (H : Subgroup G), H ∈ subgroupLattice → action φ H ∈ subgroupLattice
  latticeComplete : Prop

structure AutGroupLatticeEvidence {G : Type u} [Group G] (P : AutGroupLatticePackage G) where
  closureUnderActionClosed : P.closureUnderAction
  latticeCompleteClosed : P.latticeComplete

def AutGroupLatticeClosed {G : Type u} [Group G] (P : AutGroupLatticePackage G) : Prop :=
  P.closureUnderAction ∧ P.latticeComplete

theorem aut_group_lattice_closed_from_evidence {G : Type u} [Group G]
    (P : AutGroupLatticePackage G) (E : AutGroupLatticeEvidence P) :
    AutGroupLatticeClosed P := by
  exact And.intro E.closureUnderActionClosed E.latticeCompleteClosed

end AutomorphismGroupsLatticesCanonicalLaneLean
end HautevilleHouse