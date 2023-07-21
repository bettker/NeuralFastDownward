(define (problem depotprob1916) (:domain depot)
(:objects
	depot0 depot1 distributor0 distributor1 truck0 truck1 truck2 truck3 pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 )
(:init
	(at crate1 depot1)
	(at crate11 depot1)
	(at crate13 depot0)
	(at crate14 distributor0)
	(at crate2 distributor0)
	(at crate4 depot1)
	(at crate6 distributor0)
	(at crate8 distributor0)
	(at truck0 depot0)
	(at truck1 depot1)
	(at truck2 depot1)
	(at truck3 depot1)
	(available hoist0)
	(available hoist2)
	(available hoist3)
	(available hoist5)
	(available hoist7)
	(clear crate13)
	(clear crate4)
	(clear crate6)
	(clear pallet0)
	(clear pallet3)
	(clear pallet5)
	(clear pallet6)
	(clear pallet7)
	(in crate0 truck0)
	(in crate12 truck0)
	(in crate3 truck2)
	(in crate9 truck0)
	(lifting hoist1 crate5)
	(lifting hoist4 crate10)
	(lifting hoist6 crate7)
	(on crate1 pallet1)
	(on crate11 crate1)
	(on crate13 pallet4)
	(on crate14 crate8)
	(on crate2 pallet2)
	(on crate4 crate11)
	(on crate6 crate14)
	(on crate8 crate2)
	(pallet pallet0)
	(surface pallet0)
	(at pallet0 depot0)
	(pallet pallet1)
	(surface pallet1)
	(at pallet1 depot1)
	(pallet pallet2)
	(surface pallet2)
	(at pallet2 distributor0)
	(pallet pallet3)
	(surface pallet3)
	(at pallet3 distributor1)
	(pallet pallet4)
	(surface pallet4)
	(at pallet4 depot0)
	(pallet pallet5)
	(surface pallet5)
	(at pallet5 distributor0)
	(pallet pallet6)
	(surface pallet6)
	(at pallet6 distributor1)
	(pallet pallet7)
	(surface pallet7)
	(at pallet7 depot1)
	(truck truck0)
	(truck truck1)
	(truck truck2)
	(truck truck3)
	(hoist hoist0)
	(at hoist0 depot0)
	(hoist hoist1)
	(at hoist1 depot1)
	(hoist hoist2)
	(at hoist2 distributor0)
	(hoist hoist3)
	(at hoist3 distributor1)
	(hoist hoist4)
	(at hoist4 distributor0)
	(hoist hoist5)
	(at hoist5 depot0)
	(hoist hoist6)
	(at hoist6 distributor0)
	(hoist hoist7)
	(at hoist7 distributor1)
	(crate crate0)
	(surface crate0)
	(crate crate1)
	(surface crate1)
	(crate crate2)
	(surface crate2)
	(crate crate3)
	(surface crate3)
	(crate crate4)
	(surface crate4)
	(crate crate5)
	(surface crate5)
	(crate crate6)
	(surface crate6)
	(crate crate7)
	(surface crate7)
	(crate crate8)
	(surface crate8)
	(crate crate9)
	(surface crate9)
	(crate crate10)
	(surface crate10)
	(crate crate11)
	(surface crate11)
	(crate crate12)
	(surface crate12)
	(crate crate13)
	(surface crate13)
	(crate crate14)
	(surface crate14)
	(place depot0)
	(place depot1)
	(place distributor0)
	(place distributor1)
)

(:goal (and
		(on crate0 crate10)
		(on crate1 pallet6)
		(on crate2 crate12)
		(on crate4 pallet4)
		(on crate5 pallet2)
		(on crate6 pallet7)
		(on crate8 crate4)
		(on crate9 crate1)
		(on crate10 pallet1)
		(on crate11 pallet5)
		(on crate12 crate5)
		(on crate13 pallet3)
		(on crate14 pallet0)
	)
))

