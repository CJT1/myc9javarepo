import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

class TestDB{
    public static void main(String[] args){
        Connection con = null;
        Statement stat = null;
        ResultSet res = null;
        
        String url = "jdbc:mysql://localhost:3306/c9";
        String user = "ciaranj";
        String password = "";
        
        try{
            con = DriverManager.getConnection(url, user, password);
            stat = con.createStatement();
            res = stat.executeQuery("SELECT * FROM Quotes");
            
            while(res.next()){
                System.out.println(res.getString(3));
            }
        }catch (SQLException ex){
            Logger lgr = Logger.getLogger(TestDB.class.getName());
            lgr.log(Level.SEVERE, ex.getMessage(), ex);
        }finally{
            try{
                if(res != null){
                    res.close();
                }
                
                if(stat != null){
                    stat.close();
                }
                
                if(con != null){
                    con.close();
                }
            }catch (SQLException ex){
                Logger lgr = Logger.getLogger(TestDB.class.getName());
                lgr.log(Level.WARNING, ex.getMessage(), ex);
            }
        }
        
    }
}