import java.sql.DriverManager;
import com.mysql.cj.jdbc.Driver;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;
    private Config config = new Config();
    private List<Ad> ads;

    public MySQLAdsDao(){
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
              config.getUrl(),
              config.getUser(),
              config.getPassword()
            );
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    // Retrieves ads from the database
    @Override
    public List<Ad> all() {
        Statement statement = null;
        List<Ad> ads = new ArrayList<>();
        try {
            statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM ads");
            while(rs.next()) {
                ads.add(new Ad(
                        rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description")
                ));

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return ads;
    }

    // This inserts ads to the database!
    @Override
    public Long insert(Ad ad) {
        String sql = String.format("insert into ads (user_id, title, description) values(%d, '%s', '%s')", ad.getUserId() ,ad.getTitle(), ad.getDescription());

        try {
            Statement statement = connection.createStatement();
            statement.executeUpdate(sql, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = statement.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return 0L;
    }

}
