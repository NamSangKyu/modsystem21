package config;

public interface OracleConfig {
	public String Driver = "oracle.jdbc.OracleDriver";
	public String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	public String USER = "scott";
	public String PASS = "tiger";
}
