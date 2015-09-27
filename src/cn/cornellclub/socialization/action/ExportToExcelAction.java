package cn.cornellclub.socialization.action;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionSupport;

import cn.cornellclub.socialization.entity.Reservation;
import cn.cornellclub.socialization.util.HibernateSessionFactory;

public class ExportToExcelAction extends ActionSupport {

    /**
     * 
     */
    private static final long serialVersionUID = 1L;

    private String eventName;

    private InputStream excelStream;
    private String excelFileName;

    @Override
    public String execute() throws Exception {
        List<Reservation> reservationList = null;

        Session session = null;
        Transaction tx = null;

        try {
            session = HibernateSessionFactory.getSession();

            String hql = "from Reservation as reservation where reservation.eventName = ?";
            Query query = session.createQuery(hql);
            query.setParameter(0, eventName);
            reservationList = query.list();

        } catch (HibernateException e) {
            e.printStackTrace();
        } finally {
            // 7. �ر�session
            HibernateSessionFactory.closeSession();
        }

        // 第一步，创建一个workbook，对应一个Excel文件
        HSSFWorkbook workbook = new HSSFWorkbook();
        // 第二步，在workbook中添加一个sheet，对应Excel文件中的 sheet
        HSSFSheet sheet = workbook.createSheet("Reservation");
        // 第三步，在sheet中添加表头第0行，注意老版本poi对Excel的行数列数有限制
        HSSFRow row;
        // 第四步，创建单元格样式
        HSSFCellStyle style = workbook.createCellStyle();
        style.setAlignment(HSSFCellStyle.ALIGN_LEFT);
        // 第五步，创建表头单元格，并设置样式
        HSSFCell cell;

        // 第六步，写入实体数据
        Field[] fields = Reservation.class.getDeclaredFields();
        row = sheet.createRow(0);
        for (int i = 0; i < fields.length; i++) {
            cell = row.createCell(i);
            cell.setCellValue(fields[i].getName());
            cell.setCellStyle(style);
        }

        for (int i = 0; i < reservationList.size(); i++) {
            row = sheet.createRow(1 + i);
            for (int j = 0; j < fields.length; j++) {
                cell = row.createCell(j);
                fields[j].setAccessible(true);
                if (fields[j].get(reservationList.get(i)) != null) {
                    cell.setCellValue(
                            fields[j].get(reservationList.get(i)).toString());
                }
                cell.setCellStyle(style);
            }
        }

        // 第七步，将文件存到流中
        ByteArrayOutputStream os = new ByteArrayOutputStream();
        workbook.write(os);
        os.flush();
        byte[] fileContent = os.toByteArray();
        excelStream = new ByteArrayInputStream(fileContent, 0,
                fileContent.length);
        excelFileName = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ")
                .format(new Date()) + ".xls";
        excelFileName = new String(excelFileName.getBytes(), "ISO8859-1");
        os.close();

        return "SUCCESS";
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public InputStream getExcelStream() {
        return excelStream;
    }

    public void setExcelStream(InputStream excelStream) {
        this.excelStream = excelStream;
    }

    public String getExcelFileName() {
        return excelFileName;
    }

    public void setExcelFileName(String excelFileName) {
        this.excelFileName = excelFileName;
    }

}
