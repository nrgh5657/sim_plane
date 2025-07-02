package com.simplane.mapper;

import com.simplane.domain.AnswerVO;
import com.simplane.domain.QuestionVO;
import com.simplane.domain.ResultVO;
import com.simplane.domain.TestVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TestMapper {

    List<TestVO> readAllTests();

    // 테스트 삽입
    void insertTest(TestVO test);








}
