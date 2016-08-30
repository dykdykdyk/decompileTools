package com.tencent.connect.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.open.utils.s;
import com.tencent.tauth.d;
import org.json.JSONException;

final class q extends Handler
{
  private p b;

  public q(j paramj, p paramp, Looper paramLooper)
  {
    super(paramLooper);
    this.b = paramp;
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 1:
      p localp = this.b;
      paramMessage = (String)paramMessage.obj;
      try
      {
        localp.a(s.d(paramMessage));
        return;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        localp.a(new d(-4, "服务器返回数据格式有误!", paramMessage));
        return;
      }
    case 2:
      this.b.a();
      return;
    case 3:
    }
    j.a(j.a(this.a), (String)paramMessage.obj);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.b.q
 * JD-Core Version:    0.6.2
 */