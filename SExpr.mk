OCAML = ocaml
OCAMLC = ocamlc
OCAMLOPT = ocamlopt

all: SExpr.cmo

SExpr.cmi: SExpr.mli
	$(OCAMLC) -c $<
SExpr.cmo: SExpr.ml SExpr.cmi
	$(OCAMLC) -c $<
SExpr.cmx: SExpr.ml SExpr.cmi
	$(OCAMLOPT) -c $<
test: SExpr.cmo
	$(OCAML) SExpr.cmo SExpr_test.ml
clean:
	$(RM) SExpr.[oa] SExpr.cm[ioxa] SExpr.cmx[as]

.PHONY: all test clean
