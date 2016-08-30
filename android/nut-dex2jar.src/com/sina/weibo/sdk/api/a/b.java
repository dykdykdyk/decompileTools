package com.sina.weibo.sdk.api.a;

import android.os.Bundle;
import com.sina.weibo.sdk.c;

public abstract class b extends a
{
  public void a(Bundle paramBundle)
  {
    paramBundle.putInt("_weibo_command_type", 1);
    paramBundle.putString("_weibo_transaction", this.a);
  }

  abstract boolean a(c paramc);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.api.a.b
 * JD-Core Version:    0.6.2
 */