import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure KeplerOrbitPackage where
  semiMajorAxis : ℝ
  eccentricity : ℝ
  orbitalPeriod : ℝ
  energy : ℝ
  angularMomentum : ℝ

structure KeplerOrbitEvidence (P : KeplerOrbitPackage) where
  semiMajorAxisClosed : P.semiMajorAxis > 0
  eccentricityClosed : 0 ≤ P.eccentricity ∧ P.eccentricity < 1
  orbitalPeriodClosed : P.orbitalPeriod = 2*π*Real.sqrt (P.semiMajorAxis^3)
  energyClosed : P.energy = -1/(2*P.semiMajorAxis)
  angularMomentumClosed : P.angularMomentum = Real.sqrt (P.semiMajorAxis*(1 - P.eccentricity^2))

def KeplerOrbitClosed (P : KeplerOrbitPackage) : Prop :=
  P.semiMajorAxis > 0 ∧ 0 ≤ P.eccentricity ∧ P.eccentricity < 1 ∧
  P.orbitalPeriod = 2*π*Real.sqrt (P.semiMajorAxis^3) ∧
  P.energy = -1/(2*P.semiMajorAxis) ∧
  P.angularMomentum = Real.sqrt (P.semiMajorAxis*(1 - P.eccentricity^2))

theorem kepler_orbit_closed_from_evidence (P : KeplerOrbitPackage) (E : KeplerOrbitEvidence P) :
    KeplerOrbitClosed P := by
  have hEC := E.eccentricityClosed
  exact And.intro E.semiMajorAxisClosed (And.intro hEC.1 (And.intro hEC.2 (And.intro E.orbitalPeriodClosed (And.intro E.energyClosed E.angularMomentumClosed))))

end HautevilleHouse
end HautevilleHouse