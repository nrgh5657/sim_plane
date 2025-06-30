package com.simplane.dto;

import com.simplane.domain.ReplyVO;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
public class ReplyPageDTO {

    private List<ReplyVO> list;

}
