package cn.xixi.commons.beans;

import java.sql.Date;
import java.sql.Timestamp;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/24
 */
public class Record {
    private String pid;
    private String uid;
    private Timestamp time;

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Record{" +
                "pid='" + pid + '\'' +
                ", uid='" + uid + '\'' +
                ", time=" + time +
                '}';
    }
}
