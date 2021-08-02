package jy.memory.start;

import jy.memory.start.model.StartVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StartService {

    @Autowired
    private StartMapper mapper;

    // START_TEST 테이블 조회
    public List<StartVO> startList() {
        return mapper.startList();
    }

    public StartVO detail(StartVO vo) {
        StartVO vo2 = mapper.detail(vo);
        return vo2;
    }

    //START_TEST 값 저장
    public int startSave(StartVO vo) {
        System.out.println("status 값 : " + vo.getSTATUS());

        return mapper.startInsert(vo);
    }
}
