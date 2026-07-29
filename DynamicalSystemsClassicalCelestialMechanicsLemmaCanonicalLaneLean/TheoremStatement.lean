import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure CelestialMechanicsWitnessClosed (O : CelestialMechanicsAdmittedObject) : Prop where
  witness : O.kAMTorus

theorem celestial_mechanics_witness_closed_intro (O : CelestialMechanicsAdmittedObject) (h : O.kAMTorus) :
    CelestialMechanicsWitnessClosed O :=
  { witness := h }

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse