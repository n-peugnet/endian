// Copyright (C) 2015  The endian Authors.  All rights reserved.
// This file is part of the Go endian library.
// Use of this source code is governed by the Apache License 2.0
// that can be found in the COPYING file.

// +build !noasm

package endian

// NetToHostUint32 swaps the bytes of the given value (if necessary) to turn
// them from network byte order to host byte order.
func NetToHostUint32(n uint32) uint32

// HostToNetUint32 swaps the bytes of the given value (if necessary) to turn
// them from host byte order to network byte order.
func HostToNetUint32(n uint32) uint32
