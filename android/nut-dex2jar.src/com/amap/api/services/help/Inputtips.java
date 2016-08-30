package com.amap.api.services.help;

import android.content.Context;
import android.os.Handler;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.m;
import com.amap.api.services.core.q;
import com.amap.api.services.core.t;
import java.util.ArrayList;

public final class Inputtips
{
  private Context a;
  private Inputtips.InputtipsListener b;
  private Handler c;
  private InputtipsQuery d;

  public Inputtips(Context paramContext, Inputtips.InputtipsListener paramInputtipsListener)
  {
    this.a = paramContext.getApplicationContext();
    this.b = paramInputtipsListener;
    this.c = t.a();
  }

  public Inputtips(Context paramContext, InputtipsQuery paramInputtipsQuery)
  {
    this.a = paramContext.getApplicationContext();
    this.d = paramInputtipsQuery;
    this.c = t.a();
  }

  private ArrayList<Tip> a(InputtipsQuery paramInputtipsQuery)
    throws AMapException
  {
    q.a(this.a);
    if ((paramInputtipsQuery.getKeyword() == null) || (paramInputtipsQuery.getKeyword().equals("")))
      throw new AMapException("无效的参数 - IllegalArgumentException");
    return (ArrayList)new m(this.a, paramInputtipsQuery).a();
  }

  public final InputtipsQuery getQuery()
  {
    return this.d;
  }

  public final void requestInputtips(String paramString1, String paramString2)
    throws AMapException
  {
    requestInputtips(paramString1, paramString2, null);
  }

  public final void requestInputtips(String paramString1, String paramString2, String paramString3)
    throws AMapException
  {
    q.a(this.a);
    if ((paramString1 == null) || (paramString1.equals("")))
      throw new AMapException("无效的参数 - IllegalArgumentException");
    paramString1 = new InputtipsQuery(paramString1, paramString2);
    paramString1.setType(paramString3);
    new Inputtips.2(this, paramString1).start();
  }

  public final void requestInputtipsAsyn()
  {
    new Inputtips.1(this).start();
  }

  public final void setInputtipsListener(Inputtips.InputtipsListener paramInputtipsListener)
  {
    this.b = paramInputtipsListener;
  }

  public final void setQuery(InputtipsQuery paramInputtipsQuery)
  {
    this.d = paramInputtipsQuery;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.help.Inputtips
 * JD-Core Version:    0.6.2
 */