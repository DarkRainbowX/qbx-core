QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved

---@class Job
---@field label string
---@field type? string
---@field defaultDuty boolean
---@field offDutyPay boolean
---@field grades table<integer, {name: string, payment: number, isboss: boolean}>

---@type table<string, Job>
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Unemployed',
                payment = 40
            },
        },
	},
	['police'] = {
		label = 'Police',
        type = "leo",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 40
            },
			['1'] = {
                name = 'Officer',
                payment = 40
            },
			['2'] = {
                name = 'Sergeant',
                payment = 40
            },
			['3'] = {
                name = 'Lieutenant',
                payment = 40
            },
            ['4'] = {
                name = 'Colonel',
                payment = 40
            },
			['10'] = {
                name = 'Chief',
				isboss = true,
                payment = 40
            },
        },
	},
	['ambulance'] = {
		label = 'EMS',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 800
            },
			['1'] = {
                name = 'Paramedic',
                payment = 800
            },
			['2'] = {
                name = 'Doctor',
                payment = 800
            },
			['3'] = {
                name = 'Senior Doctor',
                payment = 800
            },
            ['4'] = {
                name = 'Surgeon',
                payment = 800
            },
			['10']  = {
                name = 'Director',
				isboss = true,
                payment = 800
            },
        },
	},
	['realestate'] = {
		label = 'Realestate',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 40
            },
			['1'] = {
                name = 'House Sales',
                payment = 40
            },
			['2'] = {
                name = 'Business Sales',
                payment = 40
            },
			['3'] = {
                name = 'Broker',
                payment = 40
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 40
            },
        },
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 40
            },
			['1'] = {
                name = 'Driver',
                payment = 40
            },
			['2'] = {
                name = 'Limo Driver',
                payment = 40
            },
			['3'] = {
                name = 'Sales',
                payment = 40
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 40
            },
        },
	},
    -- ['bus'] = {
	-- 	label = 'Bus',
	-- 	defaultDuty = true,
	-- 	offDutyPay = false,
	-- 	grades = {
    --         ['0'] = {
    --             name = 'Driver',
    --             payment = 40
    --         },
	-- 	},
	-- },
	['cardealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 40
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 40
            },
			['2'] = {
                name = 'Business Sales',
                payment = 40
            },
			['3'] = {
                name = 'Finance',
                payment = 40
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 40
            },
        },
	},
	['mechanic'] = {
		label = 'Mechanic',
        type = "mechanic",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 40
            },
			['1'] = {
                name = 'Novice',
                payment = 40
            },
			['2'] = {
                name = 'Experienced',
                payment = 40
            },
			['3'] = {
                name = 'Advanced',
                payment = 40
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 40
            },
        },
	},
	['judge'] = {
		label = 'Honorary',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Judge',
                payment = 40
            },
        },
	},
	['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Associate',
                payment = 40
            },
        },
	},
	['reporter'] = {
		label = 'Reporter',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Journalist',
                payment = 40
            },
        },
	},
	['trucker'] = {
		label = 'Supplier',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Transporter',
                payment = 40
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 40
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Worker',
                payment = 40
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 40
            },
        },
	},
	--[[ ['oiling'] = {
		label = 'Oil Mining',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Miner',
                payment = 40
            },
        },
	}, ]]
    -- ['electrician'] = {
	-- 	label = 'Electrician',
	-- 	defaultDuty = true,
	-- 	offDutyPay = false,
	-- 	grades = {
    --         ['0'] = {
    --             name = 'Technician',
    --             payment = 40
    --         },
    --     },
	-- },
    ['rooster'] = {
		label = 'Rooster',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Worker',
                payment = 40
            },
        },
	},
    ['lumberjack'] = {
		label = 'Lumberjack',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Logger',
                payment = 40
            },
        },
	},
    ['miner'] = {
		label = 'Miner',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Miner',
                payment = 40
            },
        },
	},
    ['farmer'] = {
		label = 'Farmer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Farmer',
                payment = 40
            },
        },
	},

    ['streetart'] = {
		label = 'StreetArt',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'StreetArt',
                payment = 0
            },
        },
	},

    ['mining'] = {
		label = 'Mining',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Mining',
                payment = 0
            },
        },
	},


    ['racecreator'] = {
		label = 'RaceReator',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'RaceReator',
                payment = 0
            },
        },
	},
}
