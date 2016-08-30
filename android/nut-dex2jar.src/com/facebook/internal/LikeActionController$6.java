package com.facebook.internal;

import android.os.Bundle;
import com.facebook.RequestBatch;

class LikeActionController$6
  implements LikeActionController.RequestCompletionCallback
{
  LikeActionController$6(LikeActionController paramLikeActionController, Bundle paramBundle)
  {
  }

  public void onComplete()
  {
    if (Utility.isNullOrEmpty(LikeActionController.access$1900(this.this$0)))
    {
      localObject = new Bundle();
      ((Bundle)localObject).putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Invalid Object Id");
      LikeActionController.access$1800(this.this$0, "com.facebook.sdk.LikeActionController.DID_ERROR", (Bundle)localObject);
      return;
    }
    Object localObject = new RequestBatch();
    LikeActionController.PublishLikeRequestWrapper localPublishLikeRequestWrapper = new LikeActionController.PublishLikeRequestWrapper(this.this$0, LikeActionController.access$1900(this.this$0));
    localPublishLikeRequestWrapper.addToBatch((RequestBatch)localObject);
    ((RequestBatch)localObject).addCallback(new LikeActionController.6.1(this, localPublishLikeRequestWrapper));
    ((RequestBatch)localObject).executeAsync();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.LikeActionController.6
 * JD-Core Version:    0.6.2
 */