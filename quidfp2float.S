	.arch armv6
	.cpu cortex-a53
	.equ 	NUL, 0

<<<<<<< HEAD
	.global quidFP2float
=======
	.global quidfp2float
>>>>>>> db86b1af66831df0bfec850a5cebb9e7cfe92414
 	// !!! SET FP_OFFSET TO THE NUMBER OF (SAVED REGISTERS -1 * 4)
	.equ 	FP_OFFSET, 16 		// (# of saved regs - 1) * 4

quidFP2float:
	// PROLOG (DO NOT TOUCH!!!)

	push    {r4-r6, fp, lr}   	// SAVED REGISTERS (any of r4-r10, r12, fp, lr)
                              // SAVE AT LEAST FP AND LR
	add  	fp, sp, #FP_OFFSET  	// .

  // ==========================================================================
  // YOUR CODE GOES IN THE SECTION BELOW
  // ==========================================================================
  // R0 holds the result





  // ==========================================================================

	// EPILOG (DO NOT TOUCH!!!)
	sub	sp, fp, #FP_OFFSET
	pop     {r4-r6, fp, lr}   	// MUST MATCH LIST IN PROLOG'S PUSH
	bx 	lr                      // return


	.global zeroQuidFP2float
	.equ 	FP_OFFSET, 4  		//  (# of saved regs -1) * 4

zeroQuidFP2float:
  // PROLOG (DO NOT TOUCH!!!)
<<<<<<< HEAD
        push    {fp, lr}   		// save regs
=======
  push    {fp, lr}   		// save regs
>>>>>>> db86b1af66831df0bfec850a5cebb9e7cfe92414
	add	fp, sp, #FP_OFFSET

  // ==========================================================================
  // YOUR CODE GOES IN THE SECTION BELOW
  // ==========================================================================
	// R0 holds the Result





  // ==========================================================================

	// EPILOG (DO NOT TOUCH!!!)
	sub	sp, fp, #FP_OFFSET
	pop     {fp, lr}   		// restore regs
	bx 	lr                      // return
