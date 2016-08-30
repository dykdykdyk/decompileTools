package com.squareup.picasso;

import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class Dispatcher$DispatcherHandler extends Handler
{
  private final Dispatcher dispatcher;

  public Dispatcher$DispatcherHandler(Looper paramLooper, Dispatcher paramDispatcher)
  {
    super(paramLooper);
    this.dispatcher = paramDispatcher;
  }

  public void handleMessage(Message paramMessage)
  {
    boolean bool = true;
    switch (paramMessage.what)
    {
    case 3:
    case 8:
    default:
      Picasso.HANDLER.post(new Dispatcher.DispatcherHandler.1(this, paramMessage));
      return;
    case 1:
      paramMessage = (Action)paramMessage.obj;
      this.dispatcher.performSubmit(paramMessage);
      return;
    case 2:
      paramMessage = (Action)paramMessage.obj;
      this.dispatcher.performCancel(paramMessage);
      return;
    case 11:
      paramMessage = paramMessage.obj;
      this.dispatcher.performPauseTag(paramMessage);
      return;
    case 12:
      paramMessage = paramMessage.obj;
      this.dispatcher.performResumeTag(paramMessage);
      return;
    case 4:
      paramMessage = (BitmapHunter)paramMessage.obj;
      this.dispatcher.performComplete(paramMessage);
      return;
    case 5:
      paramMessage = (BitmapHunter)paramMessage.obj;
      this.dispatcher.performRetry(paramMessage);
      return;
    case 6:
      paramMessage = (BitmapHunter)paramMessage.obj;
      this.dispatcher.performError(paramMessage, false);
      return;
    case 7:
      this.dispatcher.performBatchComplete();
      return;
    case 9:
      paramMessage = (NetworkInfo)paramMessage.obj;
      this.dispatcher.performNetworkStateChange(paramMessage);
      return;
    case 10:
    }
    Dispatcher localDispatcher = this.dispatcher;
    if (paramMessage.arg1 == 1);
    while (true)
    {
      localDispatcher.performAirplaneModeChange(bool);
      return;
      bool = false;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.Dispatcher.DispatcherHandler
 * JD-Core Version:    0.6.2
 */