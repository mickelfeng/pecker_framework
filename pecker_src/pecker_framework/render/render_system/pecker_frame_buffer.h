/*
 * pecker_frame_buffer.h
 *
 *  Created on: 2013-3-17
 *      Author: �����  �� cut / cutxyz��
 *		e-mail: cut-12345@hotmail.com
 *              501931049@qq.com
 */

#ifndef PECKER_FRAME_BUFFER_H_
#define  PECKER_FRAME_BUFFER_H_

#include "pecker_texture.h"
#include "pecker_render_buffer.h"

PECKER_BEGIN

enum COLOR_BUFFER_ATTACHMENT_INDEX
{
	COLOR_BUFFER_ATTACHMENT_INDEX_0 = 0,
	COLOR_BUFFER_ATTACHMENT_INDEX_1,
	COLOR_BUFFER_ATTACHMENT_INDEX_2,
	COLOR_BUFFER_ATTACHMENT_INDEX_3,
	COLOR_BUFFER_ATTACHMENT_INDEX_4,
	COLOR_BUFFER_ATTACHMENT_INDEX_5,
	COLOR_BUFFER_ATTACHMENT_INDEX_6,
	COLOR_BUFFER_ATTACHMENT_INDEX_7,
	COLOR_BUFFER_ATTACHMENT_INDEX_8,
	COLOR_BUFFER_ATTACHMENT_INDEX_9,
	COLOR_BUFFER_ATTACHMENT_INDEX_10,
	COLOR_BUFFER_ATTACHMENT_INDEX_11,
	COLOR_BUFFER_ATTACHMENT_INDEX_12,
	COLOR_BUFFER_ATTACHMENT_INDEX_13,
	COLOR_BUFFER_ATTACHMENT_INDEX_14,
	COLOR_BUFFER_ATTACHMENT_INDEX_15,
	COLOR_BUFFER_ATTACHMENT_INDEX_16,

	COLOR_BUFFER_ATTACHMENT_INDEX_COUNT
};

enum DEPTH_BUFFER_ATTACHMENT_INDEX
{
	DEPTH_BUFFER_ATTACHMENT_INDEX_0 = 0,
	DEPTH_BUFFER_ATTACHMENT_INDEX_1,
	DEPTH_BUFFER_ATTACHMENT_INDEX_2,
	DEPTH_BUFFER_ATTACHMENT_INDEX_3,
	DEPTH_BUFFER_ATTACHMENT_INDEX_4,
	DEPTH_BUFFER_ATTACHMENT_INDEX_5,
	DEPTH_BUFFER_ATTACHMENT_INDEX_6,
	DEPTH_BUFFER_ATTACHMENT_INDEX_7,
	DEPTH_BUFFER_ATTACHMENT_INDEX_8,
	DEPTH_BUFFER_ATTACHMENT_INDEX_9,
	DEPTH_BUFFER_ATTACHMENT_INDEX_10,
	DEPTH_BUFFER_ATTACHMENT_INDEX_11,
	DEPTH_BUFFER_ATTACHMENT_INDEX_12,
	DEPTH_BUFFER_ATTACHMENT_INDEX_13,
	DEPTH_BUFFER_ATTACHMENT_INDEX_14,
	DEPTH_BUFFER_ATTACHMENT_INDEX_15,
	DEPTH_BUFFER_ATTACHMENT_INDEX_16,

	DEPTH_BUFFER_ATTACHMENT_INDEX_COUNT
};

enum STENCIL_BUFFER_ATTACHMENT_INDEX
{
	STENCIL_BUFFER_ATTACHMENT_INDEX_0 = 0,
	STENCIL_BUFFER_ATTACHMENT_INDEX_1,
	STENCIL_BUFFER_ATTACHMENT_INDEX_2,
	STENCIL_BUFFER_ATTACHMENT_INDEX_3,
	STENCIL_BUFFER_ATTACHMENT_INDEX_4,
	STENCIL_BUFFER_ATTACHMENT_INDEX_5,
	STENCIL_BUFFER_ATTACHMENT_INDEX_6,
	STENCIL_BUFFER_ATTACHMENT_INDEX_7,
	STENCIL_BUFFER_ATTACHMENT_INDEX_8,
	STENCIL_BUFFER_ATTACHMENT_INDEX_9,
	STENCIL_BUFFER_ATTACHMENT_INDEX_10,
	STENCIL_BUFFER_ATTACHMENT_INDEX_11,
	STENCIL_BUFFER_ATTACHMENT_INDEX_12,
	STENCIL_BUFFER_ATTACHMENT_INDEX_13,
	STENCIL_BUFFER_ATTACHMENT_INDEX_14,
	STENCIL_BUFFER_ATTACHMENT_INDEX_15,
	STENCIL_BUFFER_ATTACHMENT_INDEX_16,

	STENCIL_BUFFER_ATTACHMENT_INDEX_COUNT
};

enum FRAME_BUFFER_STATUS_TYPE
{
		FRAMEBUFFER_COMPLETE = 0,
		FRAMEBUFFER_INCOMPLETE_ATTACHMENT,
		FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT,
		FRAMEBUFFER_INCOMPLETE_DIMENSIONS,
		FRAMEBUFFER_UNSUPPORTED,

		FRAMEBUFFER_NOT_EXIST,

		FRAME_BUFFER_STATUS_TYPE_COUNT
};

PeckerInterface Ipecker_frame_buffer //: public Ipecker_graphic_buffer
{
	virtual ~Ipecker_frame_buffer(){;}
	virtual HResult allocate_buffer_from_gpu_ram() = 0;
	virtual HResult release_buffer_from_gpu_ram() = 0;
	virtual HResult attach_render_buffer(Ipecker_render_buffer* prender_buffer,HEnum attach_index = 0) = 0;
	virtual HResult attach_texture(Ipecker_texture* ptexture,HEnum attach_index = 0)=0;//,HEnum face_type = 0,nSize zoffset = 0) = 0;
	virtual HResult attach_frame_buffer_object(Ipecker_frame_buffer_object* pframe_buffer_object,HEnum attach_index = 0) = 0;
	virtual HEnum check_status() const= 0;
};


PECKER_END

#endif //PECKER_FRAME_BUFFER_H_