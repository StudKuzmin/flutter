package classes.model.JWT;

import com.auth0.jwt.*;
import com.auth0.jwt.algorithms.*;
import com.auth0.jwt.interfaces.DecodedJWT;

public class JwtModeling {
    private String secretWord;
    private Algorithm algorithm;

    public JwtModeling(){
        secretWord = "flutProject";
        algorithm = Algorithm.HMAC256(secretWord);
    }

    public String generateToken(String login, String password){
        String token = null;

        try {

            token = JWT.create()
                    .withIssuer("JWT")
                    .withClaim("login", login)
                    .withClaim("password", password)
                    .withExpiresAt(new java.util.Date(new java.util.Date().getTime() + 86400000)) // 1 day
                    .sign(algorithm);

        } catch (Exception ex) { System.out.println("Exception in JwtModeling.generateToken(): " + ex.getMessage()); }

        return token;
    }
	public boolean checkToken(String token){
		try {
			JWTVerifier verifier = JWT.require(algorithm)
                    .withIssuer("JWT")
                    .build();

        	DecodedJWT decodedJWT = verifier.verify(token);
			return true;

		} catch (Exception ex) {
            System.out.println("Exception in JwtModeling.checkToken(): " + ex.getMessage());
            return false;
        }
	}
}
