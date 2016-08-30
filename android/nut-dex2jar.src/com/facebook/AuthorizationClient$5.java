package com.facebook;

import java.util.ArrayList;

class AuthorizationClient$5
  implements RequestBatch.Callback
{
  AuthorizationClient$5(AuthorizationClient paramAuthorizationClient, ArrayList paramArrayList1, AuthorizationClient.Result paramResult, ArrayList paramArrayList2, ArrayList paramArrayList3)
  {
  }

  public void onBatchCompleted(RequestBatch paramRequestBatch)
  {
    try
    {
      if ((this.val$fbids.size() == 2) && (this.val$fbids.get(0) != null) && (this.val$fbids.get(1) != null) && (((String)this.val$fbids.get(0)).equals(this.val$fbids.get(1))))
        paramRequestBatch = AccessToken.createFromTokenWithRefreshedPermissions(this.val$pendingResult.token, this.val$grantedPermissions, this.val$declinedPermissions);
      for (paramRequestBatch = AuthorizationClient.Result.createTokenResult(this.this$0.pendingRequest, paramRequestBatch); ; paramRequestBatch = AuthorizationClient.Result.createErrorResult(this.this$0.pendingRequest, "User logged in as different Facebook user.", null))
      {
        this.this$0.complete(paramRequestBatch);
        return;
      }
    }
    catch (Exception paramRequestBatch)
    {
      this.this$0.complete(AuthorizationClient.Result.createErrorResult(this.this$0.pendingRequest, "Caught exception", paramRequestBatch.getMessage()));
      return;
    }
    finally
    {
      AuthorizationClient.access$000(this.this$0);
    }
    throw paramRequestBatch;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.AuthorizationClient.5
 * JD-Core Version:    0.6.2
 */