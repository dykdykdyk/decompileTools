package com.facebook.internal;

import android.os.Bundle;
import com.facebook.FacebookRequestError;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.Request;
import com.facebook.Response;

class LikeActionController$PublishLikeRequestWrapper extends LikeActionController.AbstractRequestWrapper
{
  String unlikeToken;

  LikeActionController$PublishLikeRequestWrapper(LikeActionController paramLikeActionController, String paramString)
  {
    super(paramLikeActionController, paramString);
    Bundle localBundle = new Bundle();
    localBundle.putString("object", paramString);
    setRequest(new Request(LikeActionController.access$2700(paramLikeActionController), "me/og.likes", localBundle, HttpMethod.POST));
  }

  protected void processError(FacebookRequestError paramFacebookRequestError)
  {
    if (paramFacebookRequestError.getErrorCode() == 3501)
    {
      this.error = null;
      return;
    }
    Logger.log(LoggingBehavior.REQUESTS, LikeActionController.access$1600(), "Error liking object '%s' : %s", new Object[] { this.objectId, paramFacebookRequestError });
    LikeActionController.access$2600(this.this$0, "publish_like", paramFacebookRequestError);
  }

  protected void processSuccess(Response paramResponse)
  {
    this.unlikeToken = Utility.safeGetStringFromResponse(paramResponse.getGraphObject(), "id");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.LikeActionController.PublishLikeRequestWrapper
 * JD-Core Version:    0.6.2
 */