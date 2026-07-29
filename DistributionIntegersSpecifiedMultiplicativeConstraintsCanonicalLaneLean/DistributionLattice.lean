import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean

structure DistributionLattice (A : AdmissibleClass) where
  carrier : Type u
  join : carrier → carrier → carrier
  meet : carrier → carrier → carrier
  top : carrier
  bottom : carrier
  join_comm : ∀ a b, join a b = join b a
  join_assoc : ∀ a b c, join (join a b) c = join a (join b c)
  meet_comm : ∀ a b, meet a b = meet b a
  meet_assoc : ∀ a b c, meet (meet a b) c = meet a (meet b c)
  absorb_join_meet : ∀ a b, join a (meet a b) = a
  absorb_meet_join : ∀ a b, meet a (join a b) = a
  top_join : ∀ a, join a top = top
  bottom_meet : ∀ a, meet a bottom = bottom

structure DistributionLatticeEvidence (A : AdmissibleClass) (L : DistributionLattice A) where
  join_comm_closed : ∀ a b : L.carrier, L.join a b = L.join b a
  join_assoc_closed : ∀ a b c : L.carrier, L.join (L.join a b) c = L.join a (L.join b c)
  meet_comm_closed : ∀ a b : L.carrier, L.meet a b = L.meet b a
  meet_assoc_closed : ∀ a b c : L.carrier, L.meet (L.meet a b) c = L.meet a (L.meet b c)
  absorb_join_meet_closed : ∀ a b : L.carrier, L.join a (L.meet a b) = a
  absorb_meet_join_closed : ∀ a b : L.carrier, L.meet a (L.join a b) = a
  top_join_closed : ∀ a : L.carrier, L.join a L.top = L.top
  bottom_meet_closed : ∀ a : L.carrier, L.meet a L.bottom = L.bottom

def DistributionLatticeClosed (A : AdmissibleClass) (L : DistributionLattice A) : Prop :=
  (∀ a b : L.carrier, L.join a b = L.join b a) ∧
  (∀ a b c : L.carrier, L.join (L.join a b) c = L.join a (L.join b c)) ∧
  (∀ a b : L.carrier, L.meet a b = L.meet b a) ∧
  (∀ a b c : L.carrier, L.meet (L.meet a b) c = L.meet a (L.meet b c)) ∧
  (∀ a b : L.carrier, L.join a (L.meet a b) = a) ∧
  (∀ a b : L.carrier, L.meet a (L.join a b) = a) ∧
  (∀ a : L.carrier, L.join a L.top = L.top) ∧
  (∀ a : L.carrier, L.meet a L.bottom = L.bottom)

theorem distribution_lattice_closed_from_evidence (A : AdmissibleClass) (L : DistributionLattice A) (E : DistributionLatticeEvidence A L) : DistributionLatticeClosed A L := by
  exact And.intro E.join_comm_closed (And.intro E.join_assoc_closed (And.intro E.meet_comm_closed (And.intro E.meet_assoc_closed (And.intro E.absorb_join_meet_closed (And.intro E.absorb_meet_join_closed (And.intro E.top_join_closed E.bottom_meet_closed))))))

end DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean
end HautevilleHouse