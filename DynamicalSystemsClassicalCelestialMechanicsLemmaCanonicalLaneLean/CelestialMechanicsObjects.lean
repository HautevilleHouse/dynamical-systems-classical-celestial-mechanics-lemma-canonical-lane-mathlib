import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure CelestialBody where
  mass : ℝ
  position : ℝ × ℝ × ℝ
  velocity : ℝ × ℝ × ℝ

structure CelestialSystem where
  bodies : List CelestialBody
  newtonG : ℝ

structure AdmittedCelestialObject where
  system : CelestialSystem
  threeBodyProblem : Prop
  periodicOrbitExists : Prop
  conclusion : periodicOrbitExists

def CelestialWitnessClosed (O : AdmittedCelestialObject) : Prop :=
  O.periodicOrbitExists

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse