package com.facebook.widget;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.internal.Utility;

class LikeView$LikeControllerBroadcastReceiver extends BroadcastReceiver
{
  private LikeView$LikeControllerBroadcastReceiver(LikeView paramLikeView)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int j = 1;
    paramContext = paramIntent.getAction();
    paramIntent = paramIntent.getExtras();
    int i = j;
    if (paramIntent != null)
    {
      String str = paramIntent.getString("com.facebook.sdk.LikeActionController.OBJECT_ID");
      i = j;
      if (!Utility.isNullOrEmpty(str))
      {
        if (!Utility.areObjectsEqual(LikeView.access$600(this.this$0), str))
          break label62;
        i = j;
      }
    }
    if (i == 0);
    label62: label117: 
    do
    {
      do
      {
        return;
        i = 0;
        break;
        if ("com.facebook.sdk.LikeActionController.UPDATED".equals(paramContext))
        {
          LikeView.access$700(this.this$0);
          return;
        }
        if (!"com.facebook.sdk.LikeActionController.DID_ERROR".equals(paramContext))
          break label117;
      }
      while (LikeView.access$800(this.this$0) == null);
      LikeView.access$800(this.this$0).onError(paramIntent);
      return;
    }
    while (!"com.facebook.sdk.LikeActionController.DID_RESET".equals(paramContext));
    LikeView.access$900(this.this$0, LikeView.access$600(this.this$0));
    LikeView.access$700(this.this$0);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.LikeView.LikeControllerBroadcastReceiver
 * JD-Core Version:    0.6.2
 */