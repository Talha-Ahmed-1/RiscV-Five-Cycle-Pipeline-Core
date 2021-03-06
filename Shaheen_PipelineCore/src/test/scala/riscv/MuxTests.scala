package riscv

import chisel3.iotesters.PeekPokeTester

class MuxTests(c: Mux) extends PeekPokeTester(c) {
        poke(c.io.a,0)
        poke(c.io.b, 1)
	poke(c.io.sel, 1)
        step(1)
        expect(c.io.output, 1)
}
