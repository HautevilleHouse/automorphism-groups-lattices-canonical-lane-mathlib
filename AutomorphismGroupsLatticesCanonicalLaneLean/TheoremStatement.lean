import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.Projection

namespace HautevilleHouse
namespace AutomorphismGroupsLatticesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  latticeConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "automorphism-groups-lattices-canonical-lane",
    theoremName := "Automorphism Groups Lattices",
    theoremObject := "Every automorphism group of a countable lattice is closed under pointwise convergence",
    classicalBoundary := "classical boundary carried by formalization certificate",
    latticeConstrainedStatement := "lattice-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
    certificateLane := "lattice_constrained",
    carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
  }

end AutomorphismGroupsLatticesCanonicalLaneLean
end HautevilleHouse