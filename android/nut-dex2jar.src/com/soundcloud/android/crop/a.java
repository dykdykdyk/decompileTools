package com.soundcloud.android.crop;

import android.content.Intent;
import android.net.Uri;

public final class a
{
  public Intent a = new Intent();

  public a(Uri paramUri1, Uri paramUri2)
  {
    this.a.setData(paramUri1);
    this.a.putExtra("output", paramUri2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.soundcloud.android.crop.a
 * JD-Core Version:    0.6.2
 */