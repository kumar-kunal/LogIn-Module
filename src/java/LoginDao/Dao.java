/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LoginDao;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author kunal
 */
public class Dao
{
    String url="jdbc:mysql://localhost:3306/userlog";
    String username="root";
    String password="#Kbn@7500";
    String sql="select * from login where uname=? and pass=?";
    
    public boolean validateUser(String uname,String pass)
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=(Connection)DriverManager.getConnection(url,username,password);
            PreparedStatement st=con.prepareStatement(sql);
            st.setString(1,uname);
            st.setString(2,pass);
            ResultSet rs = st.executeQuery();
            if(rs.next())
            {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return false;
    }
    
}
