(define (problem depotprob5656) (:domain depot)
(:objects
	depot0 distributor0 distributor1 truck0 truck1 pallet0 pallet1 pallet2 crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 hoist0 hoist1 hoist2 )
(:init
	(at crate0 distributor1)
	(at crate1 distributor0)
	(at crate12 distributor0)
	(at crate13 distributor0)
	(at crate14 distributor0)
	(at crate3 distributor0)
	(at crate4 distributor0)
	(at crate6 distributor0)
	(at crate7 distributor0)
	(at crate8 distributor0)
	(at crate9 distributor0)
	(at truck0 depot0)
	(at truck1 distributor1)
	(available hoist0)
	(available hoist1)
	(clear crate0)
	(clear crate1)
	(clear pallet0)
	(in crate10 truck0)
	(in crate11 truck0)
	(in crate5 truck0)
	(lifting hoist2 crate2)
	(on crate0 pallet2)
	(on crate1 crate6)
	(on crate12 crate9)
	(on crate13 crate14)
	(on crate14 crate12)
	(on crate3 pallet1)
	(on crate4 crate3)
	(on crate6 crate13)
	(on crate7 crate4)
	(on crate8 crate7)
	(on crate9 crate8)
	(pallet pallet0)
	(surface pallet0)
	(at pallet0 depot0)
	(pallet pallet1)
	(surface pallet1)
	(at pallet1 distributor0)
	(pallet pallet2)
	(surface pallet2)
	(at pallet2 distributor1)
	(truck truck0)
	(truck truck1)
	(hoist hoist0)
	(at hoist0 depot0)
	(hoist hoist1)
	(at hoist1 distributor0)
	(hoist hoist2)
	(at hoist2 distributor1)
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
	(place distributor0)
	(place distributor1)
)

(:goal (and
		(on crate0 crate8)
		(on crate1 crate9)
		(on crate2 crate1)
		(on crate3 crate12)
		(on crate4 crate11)
		(on crate5 crate0)
		(on crate8 pallet0)
		(on crate9 pallet1)
		(on crate10 crate4)
		(on crate11 crate5)
		(on crate12 pallet2)
	)
))

