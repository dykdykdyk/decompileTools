package com.baidu.android.pushservice.a.a;

import android.graphics.Bitmap;
import android.net.Uri;
import com.baidu.android.pushservice.j.e;
import java.util.List;

class d$1
  implements a.a
{
  d$1(d paramd, List paramList, a.a parama, Uri[] paramArrayOfUri)
  {
  }

  public void a(Bitmap[] paramArrayOfBitmap)
  {
    if (paramArrayOfBitmap != null)
    {
      int i = 0;
      while (i < paramArrayOfBitmap.length)
      {
        if (paramArrayOfBitmap[i] != null)
        {
          String str = e.a(((Uri)this.a.get(i)).toString().getBytes(), false);
          d.a(this.d).a(str, paramArrayOfBitmap[i]);
          d.b(this.d).a(str, paramArrayOfBitmap[i]);
        }
        i += 1;
      }
    }
    this.b.a(d.a(this.d, this.c));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.a.a.d.1
 * JD-Core Version:    0.6.2
 */