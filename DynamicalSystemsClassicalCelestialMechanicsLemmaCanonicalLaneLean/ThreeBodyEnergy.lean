import DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean.CelestialMechanicsObjects

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure EnergyComponents where
  kinetic : ℝ
  potential : ℝ
  total : ℝ
  conserved : Prop

structure ThreeBodyEnergyPackage (sys : CelestialSystem) where
  energy : sys.bodies.length = 3 → EnergyComponents
  sunEarthMoonModel : Prop
  lagrangePointsStable : Prop

structure ThreeBodyEnergyEvidence (P : ThreeBodyEnergyPackage sys) where
  conservedClosed : (∀ h : sys.bodies.length = 3, (P.energy h).conserved)
  sunEarthMoonModelClosed : P.sunEarthMoonModel
  lagrangePointsStableClosed : P.lagrangePointsStable

def ThreeBodyEnergyClosed (P : ThreeBodyEnergyPackage sys) : Prop :=
  (∀ h : sys.bodies.length = 3, (P.energy h).conserved) ∧
  P.sunEarthMoonModel ∧
  P.lagrangePointsStable

theorem three_body_energy_closed_from_evidence (P : ThreeBodyEnergyPackage sys) (E : ThreeBodyEnergyEvidence P) :
    ThreeBodyEnergyClosed P := by
  exact And.intro E.conservedClosed (And.intro E.sunEarthMoonModelClosed E.lagrangePointsStableClosed)

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse