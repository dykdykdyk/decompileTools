package com.facebook.internal;

final class LikeActionController$3
  implements Runnable
{
  LikeActionController$3(LikeActionController.CreationCallback paramCreationCallback, LikeActionController paramLikeActionController)
  {
  }

  public final void run()
  {
    this.val$callback.onComplete(this.val$controller);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.LikeActionController.3
 * JD-Core Version:    0.6.2
 */