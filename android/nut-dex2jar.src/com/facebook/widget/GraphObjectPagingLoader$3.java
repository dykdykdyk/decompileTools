package com.facebook.widget;

import com.facebook.Request;
import com.facebook.RequestBatch;

class GraphObjectPagingLoader$3
  implements Runnable
{
  GraphObjectPagingLoader$3(GraphObjectPagingLoader paramGraphObjectPagingLoader, RequestBatch paramRequestBatch)
  {
  }

  public void run()
  {
    Request.executeBatchAsync(this.val$batch);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.GraphObjectPagingLoader.3
 * JD-Core Version:    0.6.2
 */