package com.facebook;

import java.util.ArrayList;

class AuthorizationClient$4
  implements Request.Callback
{
  AuthorizationClient$4(AuthorizationClient paramAuthorizationClient, ArrayList paramArrayList1, ArrayList paramArrayList2)
  {
  }

  public void onCompleted(Response paramResponse)
  {
    try
    {
      paramResponse = Session.handlePermissionResponse(paramResponse);
      if (paramResponse != null)
      {
        this.val$grantedPermissions.addAll(paramResponse.getGrantedPermissions());
        this.val$declinedPermissions.addAll(paramResponse.getDeclinedPermissions());
      }
      return;
    }
    catch (Exception paramResponse)
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.AuthorizationClient.4
 * JD-Core Version:    0.6.2
 */