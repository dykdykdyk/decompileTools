package com.facebook.internal;

import com.facebook.FacebookRequestError;
import com.facebook.LoggingBehavior;
import com.facebook.Request;
import com.facebook.RequestBatch;
import com.facebook.Response;

abstract class LikeActionController$AbstractRequestWrapper
{
  FacebookRequestError error;
  protected String objectId;
  private Request request;

  protected LikeActionController$AbstractRequestWrapper(LikeActionController paramLikeActionController, String paramString)
  {
    this.objectId = paramString;
  }

  void addToBatch(RequestBatch paramRequestBatch)
  {
    paramRequestBatch.add(this.request);
  }

  protected void processError(FacebookRequestError paramFacebookRequestError)
  {
    Logger.log(LoggingBehavior.REQUESTS, LikeActionController.access$1600(), "Error running request for object '%s' : %s", new Object[] { this.objectId, paramFacebookRequestError });
  }

  protected abstract void processSuccess(Response paramResponse);

  protected void setRequest(Request paramRequest)
  {
    this.request = paramRequest;
    paramRequest.setVersion("v2.2");
    paramRequest.setCallback(new LikeActionController.AbstractRequestWrapper.1(this));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.LikeActionController.AbstractRequestWrapper
 * JD-Core Version:    0.6.2
 */