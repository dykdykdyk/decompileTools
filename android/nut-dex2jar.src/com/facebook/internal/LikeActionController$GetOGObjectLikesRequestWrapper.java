package com.facebook.internal;

import android.os.Bundle;
import com.facebook.FacebookRequestError;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.Request;
import com.facebook.Response;
import com.facebook.Session;
import org.json.JSONArray;
import org.json.JSONObject;

class LikeActionController$GetOGObjectLikesRequestWrapper extends LikeActionController.AbstractRequestWrapper
{
  boolean objectIsLiked = LikeActionController.access$2800(this.this$0);
  String unlikeToken;

  LikeActionController$GetOGObjectLikesRequestWrapper(LikeActionController paramLikeActionController, String paramString)
  {
    super(paramLikeActionController, paramString);
    Bundle localBundle = new Bundle();
    localBundle.putString("fields", "id,application");
    localBundle.putString("object", paramString);
    setRequest(new Request(LikeActionController.access$2700(paramLikeActionController), "me/og.likes", localBundle, HttpMethod.GET));
  }

  protected void processError(FacebookRequestError paramFacebookRequestError)
  {
    Logger.log(LoggingBehavior.REQUESTS, LikeActionController.access$1600(), "Error fetching like status for object '%s' : %s", new Object[] { this.objectId, paramFacebookRequestError });
    LikeActionController.access$2600(this.this$0, "get_og_object_like", paramFacebookRequestError);
  }

  protected void processSuccess(Response paramResponse)
  {
    paramResponse = Utility.tryGetJSONArrayFromResponse(paramResponse.getGraphObject(), "data");
    if (paramResponse != null)
    {
      int i = 0;
      while (i < paramResponse.length())
      {
        JSONObject localJSONObject1 = paramResponse.optJSONObject(i);
        if (localJSONObject1 != null)
        {
          this.objectIsLiked = true;
          JSONObject localJSONObject2 = localJSONObject1.optJSONObject("application");
          if ((localJSONObject2 != null) && (Utility.areObjectsEqual(LikeActionController.access$2700(this.this$0).getApplicationId(), localJSONObject2.optString("id"))))
            this.unlikeToken = localJSONObject1.optString("id");
        }
        i += 1;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.LikeActionController.GetOGObjectLikesRequestWrapper
 * JD-Core Version:    0.6.2
 */