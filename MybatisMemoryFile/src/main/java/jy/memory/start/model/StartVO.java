package jy.memory.start.model;

import jy.memory.core.CommonVO;

public class StartVO extends CommonVO {

    private int START_SEQ;
       private String START_TITLE;
    private String START_CNTN;



    public int getSTART_SEQ() {
        return START_SEQ;
    }

    public void setSTART_SEQ(int START_SEQ) {this.START_SEQ = START_SEQ;    }

    public String getSTART_TITLE() {
        return START_TITLE;
    }

    public void setSTART_TITLE(String START_TITLE) {
        this.START_TITLE = START_TITLE;
    }

    public String getSTART_CNTN() {
        return START_CNTN;
    }

    public void setSTART_CNTN(String START_CNTN) {
        this.START_CNTN = START_CNTN;
    }
}
