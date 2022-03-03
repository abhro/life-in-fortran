.SUFFIXES:
FC = gfortran
FFLAGS = -std=f2008ts -Wall -pedantic

MOD_SOURCES = $(wildcard mod_*.f90)
SOURCES =  $(wildcard *.f90)

all: $(subst .f90,.o,$(SOURCES))
	$(FC) $(FFLAGS) -o $@ $+


modules: $(MOD_SOURCES)
	$(FC) $(FFLAGS) -c $(MOD_SOURCES)

.PHONY: clean
clean:
	rm -f *.o *.mod core
