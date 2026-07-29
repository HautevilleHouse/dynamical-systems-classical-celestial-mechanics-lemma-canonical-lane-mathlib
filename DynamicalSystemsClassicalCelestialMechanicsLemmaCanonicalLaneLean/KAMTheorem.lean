import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure KAMTheoremPackage where
  integrableSystem : Prop
  perturbationSmall : Prop
  invariantTori : Prop
  diophantineCondition : Prop
  measureOfTori : Prop

structure KAMTheoremEvidence (K : KAMTheoremPackage) where
  integrableSystemClosed : K.integrableSystem
  perturbationSmallClosed : K.perturbationSmall
  invariantToriClosed : K.invariantTori
  diophantineConditionClosed : K.diophantineCondition
  measureOfToriClosed : K.measureOfTori

def KAMTheoremClosed (K : KAMTheoremPackage) : Prop :=
  K.integrableSystem ∧ K.perturbationSmall ∧ K.invariantTori ∧
  K.diophantineCondition ∧ K.measureOfTori

theorem kam_theorem_closed_from_evidence
    (K : KAMTheoremPackage) (E : KAMTheoremEvidence K) :
    KAMTheoremClosed K := by
  exact And.intro E.integrableSystemClosed
    (And.intro E.perturbationSmallClosed
      (And.intro E.invariantToriClosed
        (And.intro E.diophantineConditionClosed E.measureOfToriClosed)))

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse