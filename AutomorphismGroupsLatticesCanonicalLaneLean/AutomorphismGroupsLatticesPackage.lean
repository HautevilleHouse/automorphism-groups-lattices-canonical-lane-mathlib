import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsLatticesCanonicalLaneLean

structure AutomorphismGroupsLatticePackage where
  underlyingGroup : Type u
  groupStructure : Group underlyingGroup
  automorphismGroup : Type v
  automorphismGroupStructure : Group automorphismGroup
  automorphismAction : automorphismGroup → underlyingGroup → underlyingGroup
  latticeOfAutomorphismSubgroups : Type w
  latticeStructure : CompleteLattice latticeOfAutomorphismSubgroups
  embeddingIntoAutomorphismGroup : latticeOfAutomorphismSubgroups → (automorphismGroup → Prop)
  closureProperties : Prop
  closurePropertiesTerm : closureProperties

structure AutomorphismGroupsLatticeEvidence (P : AutomorphismGroupsLatticePackage) where
  closurePropertiesClosed : P.closureProperties

def AutomorphismGroupsLatticeClosed (P : AutomorphismGroupsLatticePackage) : Prop :=
  P.closureProperties

theorem automorphism_groups_lattice_closed_from_evidence
    (P : AutomorphismGroupsLatticePackage) (E : AutomorphismGroupsLatticeEvidence P) :
    AutomorphismGroupsLatticeClosed P := by
  exact E.closurePropertiesClosed

end AutomorphismGroupsLatticesCanonicalLaneLean
end HautevilleHouse