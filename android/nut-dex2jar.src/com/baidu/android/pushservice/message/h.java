package com.baidu.android.pushservice.message;

import android.content.Context;
import com.baidu.android.pushservice.c.d;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.h.b;
import com.baidu.android.pushservice.i.o;
import com.baidu.android.pushservice.message.a.l;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

public class h extends c
{
  private static final String b = h.class.getSimpleName();
  private Context c;

  public h(Context paramContext)
  {
    super(paramContext);
    this.c = paramContext.getApplicationContext();
  }

  private String a(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
      return "";
    int i = 0;
    if (i < paramArrayOfByte.length)
      if (paramArrayOfByte[i] != 0);
    while (true)
    {
      return new String(paramArrayOfByte, 0, i);
      i += 1;
      break;
      i = 0;
    }
  }

  public int a(e parame)
  {
    parame.f = true;
    Object localObject1 = parame.d;
    if (localObject1 == null)
      return -1;
    Object localObject2 = new ByteArrayInputStream((byte[])localObject1);
    com.baidu.android.pushservice.util.e locale = new com.baidu.android.pushservice.util.e((InputStream)localObject2);
    i locali;
    while (true)
    {
      try
      {
        locali = new i();
        byte[] arrayOfByte = new byte[''];
        locale.a(arrayOfByte);
        locali.a(a(arrayOfByte));
        locali.a(locale.d());
        locali.a(locale.b());
        arrayOfByte = new byte[64];
        locale.a(arrayOfByte);
        locali.a(arrayOfByte);
        ((ByteArrayInputStream)localObject2).close();
        locale.a();
        parame.a(locali);
        i = localObject1.length - 204;
        if (i > 0)
        {
          parame = new byte[i];
          System.arraycopy(localObject1, 204, parame, 0, i);
          a.b(b, "New MSG: " + locali.toString());
          com.baidu.android.pushservice.util.m.a("New MSG: " + locali.toString(), this.a);
          if (com.baidu.android.pushservice.util.k.c(this.a, locali.c()))
            break;
          b.a(b, "Message ID(" + locali.c() + ") received duplicated, ack success to server directly.", this.c);
          o.a(this.a, locali.a(), locali.c(), locali.d(), parame, 4, com.baidu.android.pushservice.i.m.a);
          return 4;
        }
      }
      catch (IOException parame)
      {
        b.b(b, "error : " + parame.getMessage(), this.c);
        return -1;
      }
      i = 0;
    }
    localObject1 = l.a(locali.d());
    localObject2 = new com.baidu.android.pushservice.message.a.k(this.a).a((l)localObject1);
    b.c(b, "message type is: " + localObject1, this.c);
    if (localObject2 != null);
    for (int i = ((com.baidu.android.pushservice.message.a.c)localObject2).a(locali.a(), locali.c(), locali.d(), locali.e(), parame); ; i = 2)
    {
      int j = com.baidu.android.pushservice.i.m.a;
      if (d.a(this.a, locali.a()).a() == com.baidu.android.pushservice.c.c.d)
        j = com.baidu.android.pushservice.i.m.b;
      o.a(this.a, locali.a(), locali.c(), locali.d(), parame, i, j);
      return i;
      a.b(b, "message type invalid ");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.h
 * JD-Core Version:    0.6.2
 */