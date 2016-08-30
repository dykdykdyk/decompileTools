package com.tencent.open;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.open.a.h;
import com.tencent.open.utils.s;
import java.lang.ref.WeakReference;
import org.json.JSONException;

final class e extends Handler
{
  private d b;

  public e(a parama, d paramd, Looper paramLooper)
  {
    super(paramLooper);
    this.b = paramd;
  }

  public final void handleMessage(Message paramMessage)
  {
    h.b("openSDK_LOG.TDialog", "--handleMessage--msg.WHAT = " + paramMessage.what);
    switch (paramMessage.what)
    {
    case 4:
    default:
    case 1:
    case 2:
    case 3:
    case 5:
    }
    do
    {
      do
      {
        return;
        d locald = this.b;
        paramMessage = (String)paramMessage.obj;
        try
        {
          locald.a(s.d(paramMessage));
          return;
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
          locald.a(new com.tencent.tauth.d(-4, "服务器返回数据格式有误!", paramMessage));
          return;
        }
        this.b.a();
        return;
      }
      while ((a.a(this.a) == null) || (a.a(this.a).get() == null));
      a.a((Context)a.a(this.a).get(), (String)paramMessage.obj);
      return;
    }
    while ((a.a(this.a) == null) || (a.a(this.a).get() == null));
    a.b((Context)a.a(this.a).get(), (String)paramMessage.obj);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.e
 * JD-Core Version:    0.6.2
 */