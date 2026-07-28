import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphismGroupsLatticesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsLatticesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AutGroupLatticeWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AutomorphismGroupsLatticesCanonicalLaneLean
end HautevilleHouse