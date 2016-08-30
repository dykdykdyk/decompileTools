package com.facebook.internal;

import com.facebook.FacebookRequestError;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.Request;
import com.facebook.Response;

class LikeActionController$PublishUnlikeRequestWrapper extends LikeActionController.AbstractRequestWrapper
{
  private String unlikeToken;

  LikeActionController$PublishUnlikeRequestWrapper(LikeActionController paramLikeActionController, String paramString)
  {
    super(paramLikeActionController, null);
    this.unlikeToken = paramString;
    setRequest(new Request(LikeActionController.access$2700(paramLikeActionController), paramString, null, HttpMethod.DELETE));
  }

  protected void processError(FacebookRequestError paramFacebookRequestError)
  {
    Logger.log(LoggingBehavior.REQUESTS, LikeActionController.access$1600(), "Error unliking object with unlike token '%s' : %s", new Object[] { this.unlikeToken, paramFacebookRequestError });
    LikeActionController.access$2600(this.this$0, "publish_unlike", paramFacebookRequestError);
  }

  protected void processSuccess(Response paramResponse)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.LikeActionController.PublishUnlikeRequestWrapper
 * JD-Core Version:    0.6.2
 */