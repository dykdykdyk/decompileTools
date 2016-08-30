package com.squareup.picasso;

import android.os.Message;

class Dispatcher$DispatcherHandler$1
  implements Runnable
{
  Dispatcher$DispatcherHandler$1(Dispatcher.DispatcherHandler paramDispatcherHandler, Message paramMessage)
  {
  }

  public void run()
  {
    throw new AssertionError("Unknown handler message received: " + this.val$msg.what);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.Dispatcher.DispatcherHandler.1
 * JD-Core Version:    0.6.2
 */