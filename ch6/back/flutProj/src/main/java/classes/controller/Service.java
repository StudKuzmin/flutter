package classes.controller;

import classes.model.JWT.JwtModeling;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.Response;



import classes.model.Model;

@Path("/")
public class Service {

	@POST
	@Path("/regData")
	@Consumes("application/json")
	@Produces("application/json")
	public Response regData(String userDataJSON) throws Exception {
		Boolean dataAdded = false;
		Model model = new Model();

		try {
			// Данные успешно добавлены
			dataAdded = model.doReg(userDataJSON);
			if (dataAdded) {
				return Response.ok(true).build();
			}
			return Response.ok(false).build();

		} catch (Exception e) {
			System.out.println("Exception in SERVICE class: " + e.getMessage());
			return Response.status(Response.Status.BAD_REQUEST).entity(e.getMessage()).build();
		}


//		return Response
//				.ok(dataAdded)
////				.status(200)
////				.header("Access-Control-Allow-Origin","*")
////				.header("Access-Control-Allow-Credentials","true")
////				.header("Access-Control-Allow-Headers","origin, content-type, accept, authorization")
////				.header("Access-Control-Allow-Methods","GET, POST, PUT, DELETE, OPTIONS, HEAD")
//				.build();

	}

	@POST
	@Path("/logData")
	@Consumes("application/json")
	@Produces("application/json")
	public Response logData(/*@HeaderParam("Authentication") String st,*/ String userDataJSON)
	{
		String token;
		Model model = new Model();

		try
		{
			model = new Model();

			// Данные совпали
			token = model.doLog(userDataJSON);
		}
		catch (Exception e) {
			return Response.status(Response.Status.BAD_REQUEST).entity(e.getMessage()).build();
		}

		return Response.ok(token).build();
	}

	@GET
	@Path("/tables")
	public Response tables(@HeaderParam("Authentication") String token)
	{
		boolean tokenIsOk = false;
		JwtModeling jwt = new JwtModeling();
		try{
			tokenIsOk = jwt.checkToken(token);
		}
		catch (Exception ex) {
			System.out.println("Exception in Service.tables(): " + ex.getMessage());
			return Response.ok(false).build();
		}

		return Response
			.ok(tokenIsOk)
//			.status(200)
//			.header("Access-Control-Allow-Origin","*")
//			.header("Access-Control-Allow-Credentials","true")
//			.header("Access-Control-Allow-Headers","origin, content-type, accept, authorization")
//			.header("Access-Control-Allow-Methods","GET, POST, PUT, DELETE, OPTIONS, HEAD")
			.build();
	}

	@GET
	@Path("/test")
	@Consumes("application/json")
	@Produces("application/json")
	public Response test(/*@HeaderParam("Authentication") String st,*/ String userDataJSON)
	{
		return Response.ok(false).build();
	}

}