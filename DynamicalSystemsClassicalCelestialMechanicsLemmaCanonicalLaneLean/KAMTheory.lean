import DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean.HamiltonianMechanics

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure KAMPackage where
  integrableSystem : HamiltonianSystem
  perturbationSmall : Prop
  nonresonanceCondition : Prop
  invariantToriPersistence : Prop
  diophantineCondition : Prop

def KAMClosed (K : KAMPackage) : Prop :=
  K.perturbationSmall ∧ K.nonresonanceCondition ∧ K.invariantToriPersistence ∧ K.diophantineCondition

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse