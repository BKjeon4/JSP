package temp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class EmpDAO {
	
	private EmpDAO() throws Exception{
		// 1. 드라이버 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("드라이버로딩 성공");
	}
	
	static EmpDAO empDAO = null;
	public static EmpDAO getInstance() throws Exception{
		if(empDAO == null) empDAO = new EmpDAO();
		return empDAO;
	}
		
	
	public void insert(EmpVO vo) throws Exception{
		// 변수선언	
		
			String url = "jdbc:oracle:thin:@192.168.0.164:1521:xe";
			String user = "scott";
			String pass = "tiger";
					
			Connection con = null;
			PreparedStatement ps = null;
			System.out.println("디비 연결 성공");
		try {				
		// 2. 연결객체 얻어오기
			con = DriverManager.getConnection(url, user, pass);
			
		// 3. sql 작성 (emp테이블에 insert)
			String sql = "INSERT INTO emp(empno, deptno, ename, job, sal)"
					+ "VALUE(?,?,?,?,?)";
		// 4. 전송객체 얻어오기 ( +?에 값 지정 )
			ps = con.prepareStatement(sql);
			ps.setInt(1, vo.getEmpno());
			ps.setInt(2, vo.getDetpno());
			ps.setString(3, vo.getEname());
			ps.setString(4, vo.getJob());
			ps.setInt(5, vo.getSal());
						
		// 5. 전송
			ps.executeUpdate();
			
			
		// 6. 닫기
		}finally {
			ps.close();
			con.close();		
		
		}
	
}
}
