package cn.cornellclub.socialization.action;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionSupport;

import cn.cornellclub.socialization.entity.User;
import cn.cornellclub.socialization.util.HibernateSessionFactory;

public class UserSignUpAction extends ActionSupport {

    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private String email;
    private String password;
    private String lastName;
    private String firstName;
    private String gender;
    private String phoneNumber;
    private String weChatAccount;
    private String school;
    private String graduationYear;
    private List<String> user_options;

    @Override
    public String execute() throws Exception {
        User user = new User();

        user.setEmail(this.getEmail());
        user.setPassword(this.getPassword());
        user.setFirstName(this.getFirstName());
        user.setLastName(this.getLastName());
        user.setPhoneNumber(this.getPhoneNumber());
        user.setWeChatAccount(this.getWeChatAccount());
        user.setGender(this.getGender());
        user.setWeChatAccount(this.getWeChatAccount());
        user.setSchool(this.getSchool());
        user.setGraduationYear(this.getGraduationYear());
        user.setUser_options(this.getUser_options());

        Session session = null;
        Transaction tx = null;

        try {
            session = HibernateSessionFactory.getSession();
            tx = session.beginTransaction();

            session.saveOrUpdate(user);

            tx.commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            HibernateSessionFactory.closeSession();
        }

        return "SUCCESS";
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getWeChatAccount() {
        return weChatAccount;
    }

    public void setWeChatAccount(String weChatAccount) {
        this.weChatAccount = weChatAccount;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public List<String> getUser_options() {
        return user_options;
    }

    public void setUser_options(List<String> user_options) {
        this.user_options = user_options;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getGraduationYear() {
        return graduationYear;
    }

    public void setGraduationYear(String graduationYear) {
        this.graduationYear = graduationYear;
    }
}
