package com.nut.blehunter.broadcast;

import android.content.Context;
import com.nut.blehunter.d.k;
import com.nut.blehunter.rxApi.i;
import com.nut.blehunter.rxApi.model.ApiError;

final class b extends i
{
  b(PushMsgReceiver paramPushMsgReceiver, Context paramContext, String paramString)
  {
  }

  public final void a(ApiError paramApiError)
  {
    k.a(this.a, "push_channel_id", "");
  }

  public final void a(String paramString)
  {
    k.a(this.a, "push_channel_id", this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.broadcast.b
 * JD-Core Version:    0.6.2
 */