package com.camp.dto;

public class noticeDTO {
    int notice_num;
    String notice_tittle, notice_content, notice_writer, notice_regdate, notice_updater, notice_updatedate;

    public int getNotice_num() {
        return notice_num;
    }

    public void setNotice_num(int notice_num) {
        this.notice_num = notice_num;
    }

    public String getNotice_tittle() {
        return notice_tittle;
    }

    public void setNotice_tittle(String notice_tittle) {
        this.notice_tittle = notice_tittle;
    }

    public String getNotice_content() {
        return notice_content;
    }

    public void setNotice_content(String notice_content) {
        this.notice_content = notice_content;
    }

    public String getNotice_writer() {
        return notice_writer;
    }

    public void setNotice_writer(String notice_writer) {
        this.notice_writer = notice_writer;
    }

    public String getNotice_regdate() {
        return notice_regdate;
    }

    public void setNotice_regdate(String notice_regdate) {
        this.notice_regdate = notice_regdate;
    }

    public String getNotice_updater() {
        return notice_updater;
    }

    public void setNotice_updater(String notice_updater) {
        this.notice_updater = notice_updater;
    }

    public String getNotice_updatedate() {
        return notice_updatedate;
    }

    public void setNotice_updatedate(String notice_updatedate) {
        this.notice_updatedate = notice_updatedate;
    }

    @Override
    public String toString() {
        return "noticeDTO [notice_num=" + notice_num + ", notice_tittle=" + notice_tittle + ", notice_content="
                + notice_content + ", notice_writer=" + notice_writer + ", notice_regdate=" + notice_regdate
                + ", notice_updater=" + notice_updater + ", notice_updatedate=" + notice_updatedate + "]";
    }

}
