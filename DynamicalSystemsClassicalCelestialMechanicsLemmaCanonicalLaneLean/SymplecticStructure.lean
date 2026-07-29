import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure SymplecticStructurePackage where
  phaseSpace : Type u
  symplecticForm : Type v
  closedNondegenerate : Prop
  poissonBracket : Prop
  canonicalTransformations : Prop

structure SymplecticStructureEvidence (S : SymplecticStructurePackage) where
  closedNondegenerateClosed : S.closedNondegenerate
  poissonBracketClosed : S.poissonBracket
  canonicalTransformationsClosed : S.canonicalTransformations

def SymplecticStructureClosed (S : SymplecticStructurePackage) : Prop :=
  S.closedNondegenerate ∧ S.poissonBracket ∧ S.canonicalTransformations

theorem symplectic_structure_closed_from_evidence
    (S : SymplecticStructurePackage) (E : SymplecticStructureEvidence S) :
    SymplecticStructureClosed S := by
  exact And.intro E.closedNondegenerateClosed
    (And.intro E.poissonBracketClosed E.canonicalTransformationsClosed)

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse