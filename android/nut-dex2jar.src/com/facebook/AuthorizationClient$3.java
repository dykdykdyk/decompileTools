package com.facebook;

import com.facebook.model.GraphUser;
import java.util.ArrayList;

class AuthorizationClient$3
  implements Request.Callback
{
  AuthorizationClient$3(AuthorizationClient paramAuthorizationClient, ArrayList paramArrayList)
  {
  }

  public void onCompleted(Response paramResponse)
  {
    try
    {
      paramResponse = (GraphUser)paramResponse.getGraphObjectAs(GraphUser.class);
      if (paramResponse != null)
        this.val$fbids.add(paramResponse.getId());
      return;
    }
    catch (Exception paramResponse)
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.AuthorizationClient.3
 * JD-Core Version:    0.6.2
 */