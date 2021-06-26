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
}
