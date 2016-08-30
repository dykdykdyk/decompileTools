package com.facebook;

import com.facebook.model.GraphUser;

final class Request$2
  implements Request.Callback
{
  Request$2(Request.GraphUserListCallback paramGraphUserListCallback)
  {
  }

  public final void onCompleted(Response paramResponse)
  {
    if (this.val$callback != null)
      this.val$callback.onCompleted(Request.access$000(paramResponse, GraphUser.class), paramResponse);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.Request.2
 * JD-Core Version:    0.6.2
 */