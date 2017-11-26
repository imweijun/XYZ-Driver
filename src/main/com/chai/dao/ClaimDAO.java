package chai.dao;

import chai.Services.DateService;
import chai.daoMappers.ClaimMapper;
import chai.daoMappers.MemberMapper;
import chai.factories.DataSourceFactory;
import chai.models.Claim;
import chai.models.Member;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

public class ClaimDAO {

    private DataSource dataSource;
    private ClaimMapper claimMapper;

    public ClaimDAO(){
        this.dataSource = DataSourceFactory.getMySqlDataSource();
        this.claimMapper = new ClaimMapper();
    }

    public List<Claim> getAll(){
        List<Claim> claims = new ArrayList<Claim>();

        Connection connection               = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet                 = null;

        try {
            connection                  = this.dataSource.getConnection();
            String getPasswordSqlString = "SELECT  c.id as 'claim_id', m.id as 'member_id', c.date, rationale, c.status, amount, name " +
                    "FROM claims c " +
                    "JOIN members m " +
                    "ON (c.mem_id = m.id) " +
                    "GROUP BY c.id";

            preparedStatement           = connection.prepareStatement(getPasswordSqlString);
            resultSet = preparedStatement.executeQuery();

            claims = this.claimMapper.mapClaims(resultSet);

            connection.close();
            preparedStatement.close();

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } catch (ParseException e) {
            e.printStackTrace();
        }

        return claims;
    }

}
