package com.tencent.open;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.webkit.WebChromeClient;

public abstract class i extends Dialog
{
  protected f c;

  @SuppressLint({"NewApi"})
  protected final WebChromeClient d = new j(this);

  public i(Context paramContext)
  {
    super(paramContext, 16973840);
  }

  protected abstract void a(String paramString);

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.c = new f();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.i
 * JD-Core Version:    0.6.2
 */