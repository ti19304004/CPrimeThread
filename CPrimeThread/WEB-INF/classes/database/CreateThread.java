
package database;

import java.io.IOException;

import java.io.BufferedReader;
import java.io.InputStreamReader;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.math.BigDecimal;

import java.util.Calendar;
import java.util.Date;
import java.text.SimpleDateFormat;

import bean.ThreadListProfile;

public class CreateThread{

	public static void executeInsert(ThreadListProfile cbean){
		try{

			String th_title=cbean.getTh_title();
			String th_name=cbean.getTh_name();
			String th_category=cbean.getTh_category();
			String th_description=cbean.getTh_description();
			String th_date=cbean.getTh_date();
			System.out.println(th_title);
			System.out.println(th_name);

			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("CreateThread");

			//Oracle�ɐڑ�����
			Connection cn=
				DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl",
				"cprimeuser","cprime");
			System.out.println("�ڑ�����");

			//select��
			// ���̂���肽�������炱����ς���
			// String sql=" SELECT empno,ename FROM emp";

			// �X���b�hID�̍Ō���擾
			// String thred_id="SELECT MAX(th_id)+1 FROM board_thread";
			// ��NULL���߂��Ă���

			// th_id�̍ő�����߁AisEmpty��NULL���̔�����s���Ă���


			String sql="SELECT MAX(th_id) FROM board_thread";
			Statement st=cn.createStatement();
			ResultSet rs=st.executeQuery(sql);

			rs.next();
			String thread_id=rs.getString(1);
			if(thread_id==null){
				thread_id="0";
			}
			int thread_id1=Integer.parseInt(thread_id);
			thread_id1 +=1;



			sql="INSERT INTO board_thread(th_id, th_title, th_name, th_category, th_description)VALUES("+thread_id1+",'"+th_title+"','"+th_name+"', '"+th_category+"','"+th_description+"')";

			// select�������s��ResultSet�C���^�[�t�F�C�X�����������N���X�̃C���X�^���X���Ԃ�
			int i=st.executeUpdate(sql);
			System.out.print(i);
			System.out.println(sql);



			//Oracle����ؒf����
			cn.close();

			System.out.println("�ؒf����");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
			System.out.println("�N���X���Ȃ��݂����B");
		}catch(SQLException e){
			e.printStackTrace();
			System.out.println("SQL�֘A�̗�O�݂����B");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
