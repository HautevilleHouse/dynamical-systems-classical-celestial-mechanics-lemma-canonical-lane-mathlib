import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure CelestialSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CelestialAdmittedObject where
  space : CelestialSpace
  hamiltonianSystem : Prop
  closedTrajectory : Prop
  stabilityProperty : Prop
  conclusion : stabilityProperty

def CelestialWitnessClosed (O : CelestialAdmittedObject) : Prop :=
  O.stabilityProperty

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse