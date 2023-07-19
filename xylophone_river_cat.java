public class HopeInHealthcare {

	public static void main(String[] args) {
		
		// Initiate program
		System.out.println("Welcome to Hope in Healthcare");
		
		// Create variables to store user input
		String userInput1, userInput2;
		
		// Prompt user to enter data
		System.out.println("Please enter your zip code: ");
		userInput1 = System.console().readLine();
		
		System.out.println("Please enter your condition: ");
		userInput2 = System.console().readLine();
		
		// Create array to store data
		String[] healthcareArray = new String[2];
		
		// Enter user input into array
		healthcareArray[0] = userInput1;
		healthcareArray[1] = userInput2;
		
		// Call method to search healthcare providers
		searchHealthcareProviders(healthcareArray);
	}
	
	// Method to search healthcare providers
	public static void searchHealthcareProviders(String[] healthcareArray) {
		
		// Create variables to store data
		String zipCode, condition;
		
		// Assign variables to array indices
		zipCode = healthcareArray[0];
		condition = healthcareArray[1];
		
		// API call to retrieve healthcare provider data from zip code and condition 
		String urlString = "https://api.hopeinhealthcare.com/v1/providers/?zip="+ zipCode +"&condition="+ condition; 
		
		// Convert string to URL
		try {
			URL apiURL = new URL(urlString);
			
			// Create connection using URL
			HttpURLConnection httpCon = (HttpURLConnection) apiURL.openConnection();
			
			// Set connection request type to GET
			httpCon.setRequestMethod("GET");
			
			// Execute the request
			httpCon.connect();
			
			// Retrieve data
			InputStream response = httpCon.getInputStream();
			BufferedReader reader = new BufferedReader(new InputStreamReader(response, "UTF-8"));
			String outputString = reader.readLine();
			
			// Close all objects
			reader.close();
			httpCon.disconnect();
			
			// Parse JSON response
			JSONObject responseJSON = new JSONObject(outputString);
			JSONArray providerArray = responseJSON.getJSONArray("providers");
			
			// Loop through array to get provider data
			for (int i=0; i<providerArray.length(); i++) {
				JSONObject provider = providerArray.getJSONObject(i);
				String providerName = provider.getString("name");
				String providerLocation = provider.getString("location");
				int providerDistance = provider.getInt("distance");
				String providerPhone = provider.getString("phone");
				
				// Print provider information
				System.out.println("Name: "+ providerName);
				System.out.println("Location: "+ providerLocation);
				System.out.println("Distance: "+ providerDistance);
				System.out.println("Phone: "+ providerPhone);
			}
			
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
	}

}