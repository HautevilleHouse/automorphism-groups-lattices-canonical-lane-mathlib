import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsLatticesCanonicalLaneLean

structure AdmissibleClass where
  object : AutGroupLatticeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AutGroupLatticeWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AutomorphismGroupsLatticesCanonicalLaneLean
end HautevilleHouse