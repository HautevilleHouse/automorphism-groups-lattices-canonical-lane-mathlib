import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphismGroupsLatticesCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.AutomorphismGroupsLatticesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AutomorphismGroupsLatticesCanonicalLaneLean

def ConstrainedAutomorphismGroupsLatticesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_automorphism_groups_lattices_endgame (A : AdmissibleClass) :
    ConstrainedAutomorphismGroupsLatticesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AutomorphismGroupsLatticesCanonicalLaneLean
end HautevilleHouse