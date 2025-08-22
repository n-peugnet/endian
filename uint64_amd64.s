// Copyright (C) 2025  The endian Authors.  All rights reserved.
// This file is part of the Go endian library.
// Use of this source code is governed by the Apache License 2.0
// that can be found in the LICENSE file.

// +build !noasm

#include "textflag.h"

// func NetToHostUint64(n uint64) uint64
TEXT ·NetToHostUint64(SB), NOSPLIT, $0
	MOVQ n+0(FP), AX
	BSWAPQ AX
	MOVQ  AX, ret+8(FP)
	RET

// func HostToNetUint64(n uint64) uint64
TEXT ·HostToNetUint64(SB), NOSPLIT, $0
	MOVQ n+0(FP), AX
	BSWAPQ AX
	MOVQ  AX, ret+8(FP)
	RET
