package com.facebook.internal;

import android.os.Bundle;
import com.facebook.FacebookRequestError;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.Request;
import com.facebook.Response;
import org.json.JSONObject;

class LikeActionController$GetPageIdRequestWrapper extends LikeActionController.AbstractRequestWrapper
{
  boolean objectIsPage;
  String verifiedObjectId;

  LikeActionController$GetPageIdRequestWrapper(LikeActionController paramLikeActionController, String paramString)
  {
    super(paramLikeActionController, paramString);
    Bundle localBundle = new Bundle();
    localBundle.putString("fields", "id");
    localBundle.putString("ids", paramString);
    setRequest(new Request(LikeActionController.access$2700(paramLikeActionController), "", localBundle, HttpMethod.GET));
  }

  protected void processError(FacebookRequestError paramFacebookRequestError)
  {
    Logger.log(LoggingBehavior.REQUESTS, LikeActionController.access$1600(), "Error getting the FB id for object '%s' : %s", new Object[] { this.objectId, paramFacebookRequestError });
  }

  protected void processSuccess(Response paramResponse)
  {
    paramResponse = Utility.tryGetJSONObjectFromResponse(paramResponse.getGraphObject(), this.objectId);
    if (paramResponse != null)
    {
      this.verifiedObjectId = paramResponse.optString("id");
      if (Utility.isNullOrEmpty(this.verifiedObjectId))
        break label44;
    }
    label44: for (boolean bool = true; ; bool = false)
    {
      this.objectIsPage = bool;
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.LikeActionController.GetPageIdRequestWrapper
 * JD-Core Version:    0.6.2
 */