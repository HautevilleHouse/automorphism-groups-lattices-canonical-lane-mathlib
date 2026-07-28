import HautevilleHouse.AutomorphismGroupsLatticesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AutomorphismGroupsLatticesCanonicalLaneLean

def ConstrainedAutomorphismLatticeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_automorphism_lattice_endgame (A : AdmissibleClass) : ConstrainedAutomorphismLatticeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AutomorphismGroupsLatticesCanonicalLaneLean
end HautevilleHouse