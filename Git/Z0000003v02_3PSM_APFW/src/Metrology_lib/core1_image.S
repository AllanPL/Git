/**
 * \file
 *
 * \brief Link binary image of core 1 into core 0.
 *
 * Copyright (c) 2013 Atmel Corporation. All rights reserved.
 *
 * \asf_license_start
 *
 * \page License
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * 3. The name of Atmel may not be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * 4. This software may only be redistributed and used in connection with an
 *    Atmel microcontroller product.
 *
 * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
 * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * \asf_license_stop
 *
 */

//#warning Make sure correct path for "CORE1_IMAGE_FILE"
//#define CORE1_IMAGE_FILE "../../project_core1/gcc/ipc_example_core1_flash.bin"
#define CORE1_IMAGE_FILE_P "../Metrology_lib/Metrology_C1_P.bin"
#define CORE1_IMAGE_FILE_S "../Metrology_lib/Metrology_C1_S.bin"

/*
 * Note: This link method is for GCC and AS6.
 * For EWARM, there is another link method supported by EWARM IDE.
 */
#if defined (__GNUC__)

	.section .rodata
	.global core1_image_start_p
	.global core1_image_end_p
	.global core1_image_start_s
	.global core1_image_end_s

	.align 8
core1_image_start_p:
    .incbin CORE1_IMAGE_FILE_P

	.align 8
core1_image_end_p:

	.align 8
core1_image_start_s:
    .incbin CORE1_IMAGE_FILE_S

	.align 8
core1_image_end_s:

#endif
