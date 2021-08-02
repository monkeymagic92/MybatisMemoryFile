package jy.memory.start;

import jy.memory.start.model.StartVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface StartMapper {

    List<StartVO> startList(); // START_TEST 테이블 조회

    StartVO detail(StartVO vo);

    int startInsert(StartVO vo);

}
