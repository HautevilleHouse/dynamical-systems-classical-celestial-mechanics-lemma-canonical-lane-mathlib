import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure TwoBodyReductionPackage where
  phaseSpace : PhaseSpace
  relativeCoordinates : PhaseSpace → PhaseSpace
  reducedMass : ℝ
  centralForce : PhaseSpace → ℝ
  keplerEllipse : Prop
  anomalyEquation : Prop

structure TwoBodyReductionEvidence (T : TwoBodyReductionPackage) where
  keplerEllipseClosed : T.keplerEllipse
  anomalyEquationClosed : T.anomalyEquation

def TwoBodyReductionClosed (T : TwoBodyReductionPackage) : Prop :=
  T.keplerEllipse ∧ T.anomalyEquation

theorem two_body_reduction_closed_from_evidence (T : TwoBodyReductionPackage)
    (E : TwoBodyReductionEvidence T) : TwoBodyReductionClosed T := by
  exact And.intro E.keplerEllipseClosed E.anomalyEquationClosed

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
