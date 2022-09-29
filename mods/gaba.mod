
COMMENT

gaba.mod

GABA-A receptor tonic activation

ENDCOMMENT

INDEPENDENT {t FROM 0 TO 1 WITH 1 (ms)}

NEURON {
	SUFFIX gaba
	NONSPECIFIC_CURRENT i
	RANGE gbar, erev
}

PARAMETER {
	gbar = 0   	(mho/cm2)
	erev = -40	(mV)

	v 		(mV)
	dt		(ms)
}


UNITS {
	(mA) = (milliamp)
	(mV) = (millivolt)
} 

ASSIGNED {
	i 		(mA/cm2)
}
 

INITIAL { 

}

BREAKPOINT {
	i = gbar*(v-erev)
} 

