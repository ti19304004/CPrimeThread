package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;

import java.util.Calendar;
import java.util.Date;
import java.text.SimpleDateFormat;

import bean.ResProfile;

public class InsertTest{

  public static void executeInsert(ResProfile rbean){

    try{

			String res_name=rbean.getRes_name();
      String res_text=rbean.getRes_text();
      String res_likes=rbean.getRes_likes();
      String res_date=rbean.getRes_date();
      String th_id=rbean.getTh_id();
			System.out.println(res_name);
      System.out.println(res_text);
      System.out.println(res_likes);
      System.out.println(th_id);
      System.out.println(res_date);


      Class.forName("oracle.jdbc.driver.OracleDriver");

      //Oracle�ɐڑ�����
			Connection cn=
				DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl",
				"cprimeuser","cprime");
			System.out.println("�ڑ�����");

 	  //�V�[�P���X���g�p��nextval�ŘA�Ԃ�
      	Statement sm = cn.createStatement();
		String sql = "INSERT INTO board_res(th_id,res_id,res_name,res_text)VALUES('"+th_id+"',board_res_sequence.nextval,'"+res_name+"','"+res_text+"')";
    	System.out.println("sql = "+ sql);
      // SQL��executeupdate �Ŏ��s
      sm.executeUpdate(sql);

			// System.out.print(i);
			System.out.println("InsertTest67");

      cn.close();

      System.out.println("InsertTest 71");
    }catch(ClassNotFoundException e){
      e.printStackTrace();
      System.out.println("InsertTestL59");
    }catch(SQLException e){
      e.printStackTrace();
      System.out.println("SQL�֘A�̃G���[");
    }catch(Exception e){
      e.printStackTrace();
    }

  }
}
