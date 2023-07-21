(define (problem depotprob7615) (:domain depot)
(:objects
	depot0 depot1 depot2 depot3 distributor0 distributor1 distributor2 distributor3 truck0 truck1 truck2 truck3 pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 )
(:init
	(at crate0 distributor3)
	(at crate1 distributor1)
	(at crate10 distributor3)
	(at crate11 depot1)
	(at crate14 depot1)
	(at crate2 distributor0)
	(at crate3 depot0)
	(at crate4 depot0)
	(at crate7 distributor2)
	(at crate8 distributor2)
	(at crate9 distributor1)
	(at truck0 depot0)
	(at truck1 distributor1)
	(at truck2 depot0)
	(at truck3 depot1)
	(available hoist2)
	(available hoist4)
	(available hoist5)
	(available hoist6)
	(available hoist7)
	(clear crate10)
	(clear crate14)
	(clear crate2)
	(clear crate4)
	(clear crate8)
	(clear crate9)
	(clear pallet1)
	(clear pallet2)
	(clear pallet3)
	(clear pallet9)
	(in crate12 truck1)
	(lifting hoist0 crate13)
	(lifting hoist1 crate6)
	(lifting hoist3 crate5)
	(on crate0 pallet7)
	(on crate1 pallet5)
	(on crate10 crate0)
	(on crate11 pallet8)
	(on crate14 crate11)
	(on crate2 pallet4)
	(on crate3 pallet0)
	(on crate4 crate3)
	(on crate7 pallet6)
	(on crate8 crate7)
	(on crate9 crate1)
	(pallet pallet0)
	(surface pallet0)
	(at pallet0 depot0)
	(pallet pallet1)
	(surface pallet1)
	(at pallet1 depot1)
	(pallet pallet2)
	(surface pallet2)
	(at pallet2 depot2)
	(pallet pallet3)
	(surface pallet3)
	(at pallet3 depot3)
	(pallet pallet4)
	(surface pallet4)
	(at pallet4 distributor0)
	(pallet pallet5)
	(surface pallet5)
	(at pallet5 distributor1)
	(pallet pallet6)
	(surface pallet6)
	(at pallet6 distributor2)
	(pallet pallet7)
	(surface pallet7)
	(at pallet7 distributor3)
	(pallet pallet8)
	(surface pallet8)
	(at pallet8 depot1)
	(pallet pallet9)
	(surface pallet9)
	(at pallet9 depot2)
	(truck truck0)
	(truck truck1)
	(truck truck2)
	(truck truck3)
	(hoist hoist0)
	(at hoist0 depot0)
	(hoist hoist1)
	(at hoist1 depot1)
	(hoist hoist2)
	(at hoist2 depot2)
	(hoist hoist3)
	(at hoist3 depot3)
	(hoist hoist4)
	(at hoist4 distributor0)
	(hoist hoist5)
	(at hoist5 distributor1)
	(hoist hoist6)
	(at hoist6 distributor2)
	(hoist hoist7)
	(at hoist7 distributor3)
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
	(place depot2)
	(place depot3)
	(place distributor0)
	(place distributor1)
	(place distributor2)
	(place distributor3)
)

(:goal (and
		(on crate0 pallet3)
		(on crate1 crate11)
		(on crate2 pallet6)
		(on crate3 crate0)
		(on crate4 crate5)
		(on crate5 crate14)
		(on crate6 pallet4)
		(on crate7 pallet2)
		(on crate8 pallet7)
		(on crate9 crate8)
		(on crate11 pallet5)
		(on crate12 crate6)
		(on crate13 crate2)
		(on crate14 pallet1)
	)
))

