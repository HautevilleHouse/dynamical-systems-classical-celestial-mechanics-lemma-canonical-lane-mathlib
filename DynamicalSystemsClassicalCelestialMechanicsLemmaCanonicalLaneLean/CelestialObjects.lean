import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure CelestialBody where
  mass : ℝ
  position : ℝ × ℝ × ℝ
  velocity : ℝ × ℝ × ℝ

structure CelestialSystem where
  bodies : List CelestialBody
  gravitationalConstant : ℝ

structure CelestialMechanicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CelestialMechanicsAdmittedObject where
  space : CelestialMechanicsSpace
  system : CelestialSystem
  newtonianDynamics : Prop
  stabilityProperty : Prop
  conclusion : stabilityProperty

structure CelestialMechanicsEndgameState where
  object : CelestialMechanicsAdmittedObject

def CelestialMechanicsWitnessClosed (O : CelestialMechanicsAdmittedObject) : Prop :=
  O.stabilityProperty

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse