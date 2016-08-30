package com.facebook;

import android.util.Pair;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class Request$4
  implements Runnable
{
  Request$4(ArrayList paramArrayList, RequestBatch paramRequestBatch)
  {
  }

  public final void run()
  {
    Iterator localIterator = this.val$callbacks.iterator();
    while (localIterator.hasNext())
    {
      Pair localPair = (Pair)localIterator.next();
      ((Request.Callback)localPair.first).onCompleted((Response)localPair.second);
    }
    localIterator = this.val$requests.getCallbacks().iterator();
    while (localIterator.hasNext())
      ((RequestBatch.Callback)localIterator.next()).onBatchCompleted(this.val$requests);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.Request.4
 * JD-Core Version:    0.6.2
 */