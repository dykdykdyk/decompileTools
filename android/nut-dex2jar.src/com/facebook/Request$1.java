package com.facebook;

import com.facebook.model.GraphUser;

final class Request$1
  implements Request.Callback
{
  Request$1(Request.GraphUserCallback paramGraphUserCallback)
  {
  }

  public final void onCompleted(Response paramResponse)
  {
    if (this.val$callback != null)
      this.val$callback.onCompleted((GraphUser)paramResponse.getGraphObjectAs(GraphUser.class), paramResponse);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.Request.1
 * JD-Core Version:    0.6.2
 */