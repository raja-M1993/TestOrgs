public class homeControlls {
    public PageReference validateAndRedirect(){

      //Write your logic here and redirect
      PageReference retURL = new PageReference('https://c.ap4.visual.force.com/apex/SignupPage');
      retURL.setRedirect(true);
      return retURL;

 }
    public PageReference loginRedirect(){

      //Write your logic here and redirect
      PageReference retURL = new PageReference('https://c.ap4.visual.force.com/apex/Login_VF');
      retURL.setRedirect(true);
      return retURL;

 }

}