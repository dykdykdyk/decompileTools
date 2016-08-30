package com.facebook;

class RequestProgress$1
  implements Runnable
{
  RequestProgress$1(RequestProgress paramRequestProgress, Request.OnProgressCallback paramOnProgressCallback, long paramLong1, long paramLong2)
  {
  }

  public void run()
  {
    this.val$callbackCopy.onProgress(this.val$currentCopy, this.val$maxProgressCopy);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.RequestProgress.1
 * JD-Core Version:    0.6.2
 */