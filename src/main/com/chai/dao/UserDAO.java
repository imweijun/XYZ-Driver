package chai.dao;

import chai.factories.DataSourceFactory;
import chai.models.User;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {

    private DataSource dataSource;

    public UserDAO(){
        this.dataSource = DataSourceFactory.getMySqlDataSource();
    }


    /**
     * Get User details from db based on userId
     * @param userid User's id to search for
     * @return User if found. NULL if not found
     */
    public User getUser(String userid){
        Connection connection               = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet                 = null;
        User user                           = new User();

        try {
            connection                  = this.dataSource.getConnection();
            String getPasswordSqlString = "SELECT * from users " +
                    "WHERE id = ?";

            preparedStatement           = connection.prepareStatement(getPasswordSqlString);
            preparedStatement.setString(1, userid);

            System.out.println(getPasswordSqlString);
            resultSet                   = preparedStatement.executeQuery();

            if(!resultSet.isBeforeFirst()){
                return null;
            }

            while(resultSet.next()){
                String id = resultSet.getString(1);

                user.setId(id);
                user.setPassword(resultSet.getString(2));
                user.setStatus(resultSet.getString(3));

            }

            connection.close();
            preparedStatement.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }
}
