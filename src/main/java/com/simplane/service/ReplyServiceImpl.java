package com.simplane.service;

import com.simplane.domain.Criteria;
import com.simplane.domain.ReplyVO;
import com.simplane.dto.ReplyPageDTO;
import com.simplane.mapper.BoardMapper;
import com.simplane.mapper.ReplyMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class ReplyServiceImpl implements ReplyService {

    private final ReplyMapper mapper;
    private final BoardMapper boardMapper;


    @Override
    public int register(ReplyVO vo) {
        return mapper.create(vo);
    }

    @Override
    public ReplyVO get(Long replyid) {
        return mapper.read(replyid);
    }

    @Override
    public ReplyPageDTO getListPage(Criteria cri, Long boardid) {
        List<ReplyVO> list = mapper.getListWithPaging(cri, boardid);
        return new ReplyPageDTO(list);
    }

    @Override
    public int modify(ReplyVO vo) {
        return mapper.update(vo);
    }

    @Override
    public int remove(Long replyid) {
        return mapper.delete(replyid);
    }

    @Override
    public List<ReplyVO> getList(Criteria cri, Long boardid) {
        return mapper.getListWithPaging(cri, boardid);
    }
}
