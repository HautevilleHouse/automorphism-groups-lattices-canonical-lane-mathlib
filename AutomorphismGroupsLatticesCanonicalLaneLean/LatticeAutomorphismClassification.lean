import canonicalLaneMathlib.AdmissibleClass
import AutomorphismGroupsLatticesCanonicalLaneLean.AutomorphismGroupLatticePackage

/-!
# Lattice Automorphism Classification Package
-/

namespace HautevilleHouse
namespace AutomorphismGroupsLatticesCanonicalLaneLean

structure LatticeAutomorphismClassificationPackage {P : AutomorphismGroupLatticePackage} where
  classificationComplete : Prop
  automorphismTypesClassified : Prop
  closureUnderComposition : Prop

structure LatticeAutomorphismClassificationEvidence {P : AutomorphismGroupLatticePackage}
    (C : LatticeAutomorphismClassificationPackage P) where
  classificationCompleteClosed : C.classificationComplete
  automorphismTypesClassifiedClosed : C.automorphismTypesClassified
  closureUnderCompositionClosed : C.closureUnderComposition

def LatticeAutomorphismClassificationClosed {P : AutomorphismGroupLatticePackage}
    (C : LatticeAutomorphismClassificationPackage P) : Prop :=
  C.classificationComplete ∧ C.automorphismTypesClassified ∧ C.closureUnderComposition

theorem lattice_automorphism_classification_closed_from_evidence
    {P : AutomorphismGroupLatticePackage} (C : LatticeAutomorphismClassificationPackage P)
    (E : LatticeAutomorphismClassificationEvidence C) :
    LatticeAutomorphismClassificationClosed C := by
  exact And.intro E.classificationCompleteClosed
    (And.intro E.automorphismTypesClassifiedClosed E.closureUnderCompositionClosed)

end AutomorphismGroupsLatticesCanonicalLaneLean
end HautevilleHouse