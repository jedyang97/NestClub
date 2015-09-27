package cn.cornellclub.socialization.action;

import java.io.File;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionSupport;

import cn.cornellclub.socialization.entity.Event;
import cn.cornellclub.socialization.util.HibernateSessionFactory;

public class OrganizeAction extends ActionSupport {
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private String name;
    private String address;
    private String date;
    private String time;
    private String dressCode;
    private String description;
    private File poster;
    private String posterFileName;
    private String posterContentType;
    private String yooPayEventName;
    private List<String> items;

    @Override
    public String execute() throws Exception {
        Event event = new Event();

        event.setName(this.getName());
        event.setAddress(this.getAddress());
        event.setDate(this.getDate());
        event.setTime(this.getTime());
        event.setDressCode(this.getDressCode());
        event.setDescription(this.getDescription());
        event.setYooPayEventName(this.getYooPayEventName());
        event.setItems(this.getItems());
        event.setPoster(posterFileName);
        event.setStatus("ongoing");

        Session session = null;
        Transaction tx = null;

        try {
            session = HibernateSessionFactory.getSession();
            tx = session.beginTransaction();

            session.saveOrUpdate(event);
            tx.commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            // 6. �ع�����
            tx.rollback();
        } finally {
            // 7. �ر�session
            HibernateSessionFactory.closeSession();
        }

        String realPath = ServletActionContext.getServletContext()
                .getRealPath("/upload");
        System.out.println("realpath: " + realPath);
        if (poster != null) {
            File toFile = new File(realPath, posterFileName);
            if (!toFile.getParentFile().exists()) {
                toFile.getParentFile().mkdirs();
            }
            FileUtils.copyFile(poster, toFile);
        }

        System.out.println("上传文件名" + posterFileName);
        System.out.println("上传文件类型" + posterContentType);

        return "SUCCESS";
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public String getDescription() {
        return description;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public File getPoster() {
        return poster;
    }

    public void setPoster(File poster) {
        this.poster = poster;
    }

    public String getPosterFileName() {
        return posterFileName;
    }

    public void setPosterFileName(String posterFileName) {
        this.posterFileName = posterFileName;
    }

    public String getPosterContentType() {
        return posterContentType;
    }

    public void setPosterContentType(String posterContentType) {
        this.posterContentType = posterContentType;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getDressCode() {
        return dressCode;
    }

    public void setDressCode(String dressCode) {
        this.dressCode = dressCode;
    }

    public List<String> getItems() {
        return items;
    }

    public void setItems(List<String> items) {
        this.items = items;
    }

    public String getYooPayEventName() {
        return yooPayEventName;
    }

    public void setYooPayEventName(String yooPayEventName) {
        this.yooPayEventName = yooPayEventName;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

}
