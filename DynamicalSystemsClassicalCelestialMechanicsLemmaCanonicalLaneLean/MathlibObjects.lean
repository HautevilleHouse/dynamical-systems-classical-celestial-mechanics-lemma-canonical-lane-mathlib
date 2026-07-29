import DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CelestialBody where
  position : ℝ × ℝ × ℝ
  velocity : ℝ × ℝ × ℝ
  mass : ℝ

def inverseSquareForce (b1 b2 : CelestialBody) : ℝ := 
  let dx := b1.position.1 - b2.position.1
  let dy := b1.position.2 - b2.position.2
  let dz := b1.position.3 - b2.position.3
  let r2 := dx*dx + dy*dy + dz*dz
  if r2 = 0 then 0 else (b1.mass * b2.mass) / r2

structure CelestialAdmittedObject where
  bodies : List CelestialBody
  equationsSatisfied : Prop
  conclusion : equationsSatisfied

structure CelestialEndgameState where
  object : CelestialAdmittedObject

def CelestialWitnessClosed (O : CelestialAdmittedObject) : Prop :=
  O.equationsSatisfied

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse