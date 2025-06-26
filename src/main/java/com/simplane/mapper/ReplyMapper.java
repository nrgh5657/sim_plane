package com.simplane.mapper;

import com.simplane.domain.ReplyVO;

public interface ReplyMapper {

    public int create(ReplyVO vo);

    public ReplyVO read(Long replyid);

    public int delete(Long replyid);

    public int update(ReplyVO vo);
}
