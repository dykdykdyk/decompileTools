package com.squareup.picasso;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.List;

final class Picasso$1 extends Handler
{
  Picasso$1(Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    int j;
    int i;
    Object localObject;
    switch (paramMessage.what)
    {
    default:
      throw new AssertionError("Unknown handler message received: " + paramMessage.what);
    case 8:
      paramMessage = (List)paramMessage.obj;
      j = paramMessage.size();
      i = 0;
    case 3:
      while (i < j)
      {
        localObject = (BitmapHunter)paramMessage.get(i);
        ((BitmapHunter)localObject).picasso.complete((BitmapHunter)localObject);
        i += 1;
        continue;
        paramMessage = (Action)paramMessage.obj;
        if (paramMessage.getPicasso().loggingEnabled)
          Utils.log("Main", "canceled", paramMessage.request.logId(), "target got garbage collected");
        Picasso.access$000(paramMessage.picasso, paramMessage.getTarget());
      }
    case 13:
    }
    while (true)
    {
      return;
      paramMessage = (List)paramMessage.obj;
      j = paramMessage.size();
      i = 0;
      while (i < j)
      {
        localObject = (Action)paramMessage.get(i);
        ((Action)localObject).picasso.resumeAction((Action)localObject);
        i += 1;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.Picasso.1
 * JD-Core Version:    0.6.2
 */