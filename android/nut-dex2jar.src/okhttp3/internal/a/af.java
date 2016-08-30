package okhttp3.internal.a;

import a.j;
import a.k;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

final class af
  implements b
{
  final aa a;
  private final j b;
  private final ad c;
  private final boolean d;

  af(j paramj, boolean paramBoolean)
  {
    this.b = paramj;
    this.d = paramBoolean;
    this.c = new ad(this.b);
    this.a = new aa(this.c);
  }

  private List<x> a(int paramInt1, short paramShort, byte paramByte, int paramInt2)
    throws IOException
  {
    Object localObject1 = this.c;
    this.c.d = paramInt1;
    ((ad)localObject1).a = paramInt1;
    this.c.e = paramShort;
    this.c.b = paramByte;
    this.c.c = paramInt2;
    localObject1 = this.a;
    while (!((aa)localObject1).b.c())
    {
      paramInt1 = ((aa)localObject1).b.f() & 0xFF;
      if (paramInt1 == 128)
        throw new IOException("index == 0");
      if ((paramInt1 & 0x80) == 128)
      {
        paramInt1 = ((aa)localObject1).a(paramInt1, 127) - 1;
        if (aa.c(paramInt1))
        {
          localObject2 = z.a()[paramInt1];
          ((aa)localObject1).a.add(localObject2);
        }
        else
        {
          paramInt2 = ((aa)localObject1).a(paramInt1 - z.a().length);
          if ((paramInt2 < 0) || (paramInt2 > ((aa)localObject1).e.length - 1))
            throw new IOException("Header index too large " + (paramInt1 + 1));
          ((aa)localObject1).a.add(localObject1.e[paramInt2]);
        }
      }
      else if (paramInt1 == 64)
      {
        ((aa)localObject1).a(new x(z.a(((aa)localObject1).b()), ((aa)localObject1).b()));
      }
      else if ((paramInt1 & 0x40) == 64)
      {
        ((aa)localObject1).a(new x(((aa)localObject1).b(((aa)localObject1).a(paramInt1, 63) - 1), ((aa)localObject1).b()));
      }
      else if ((paramInt1 & 0x20) == 32)
      {
        ((aa)localObject1).d = ((aa)localObject1).a(paramInt1, 31);
        if ((((aa)localObject1).d < 0) || (((aa)localObject1).d > ((aa)localObject1).c))
          throw new IOException("Invalid dynamic table size update " + ((aa)localObject1).d);
        ((aa)localObject1).a();
      }
      else
      {
        k localk;
        if ((paramInt1 == 16) || (paramInt1 == 0))
        {
          localObject2 = z.a(((aa)localObject1).b());
          localk = ((aa)localObject1).b();
          ((aa)localObject1).a.add(new x((k)localObject2, localk));
        }
        else
        {
          localObject2 = ((aa)localObject1).b(((aa)localObject1).a(paramInt1, 15) - 1);
          localk = ((aa)localObject1).b();
          ((aa)localObject1).a.add(new x((k)localObject2, localk));
        }
      }
    }
    localObject1 = this.a;
    Object localObject2 = new ArrayList(((aa)localObject1).a);
    ((aa)localObject1).a.clear();
    return localObject2;
  }

  private void b()
    throws IOException
  {
    this.b.h();
    this.b.f();
  }

  public final void a()
    throws IOException
  {
    if (this.d);
    k localk;
    do
    {
      return;
      localk = this.b.c(ac.a().c.length);
      if (ac.b().isLoggable(Level.FINE))
        ac.b().fine(String.format("<< CONNECTION %s", new Object[] { localk.b() }));
    }
    while (ac.a().equals(localk));
    throw ac.a("Expected a connection header but was %s", new Object[] { localk.a() });
  }

  public final boolean a(c paramc)
    throws IOException
  {
    boolean bool1 = true;
    short s2 = 0;
    boolean bool2 = false;
    short s1 = 0;
    int k;
    byte b2;
    label250: 
    do
    {
      do
      {
        try
        {
          this.b.a(9L);
          k = ac.a(this.b);
          if ((k < 0) || (k > 16384))
            throw ac.a("FRAME_SIZE_ERROR: %s", new Object[] { Integer.valueOf(k) });
        }
        catch (IOException paramc)
        {
          bool1 = false;
          return bool1;
        }
        byte b1 = (byte)(this.b.f() & 0xFF);
        b2 = (byte)(this.b.f() & 0xFF);
        j = this.b.h() & 0x7FFFFFFF;
        if (ac.b().isLoggable(Level.FINE))
          ac.b().fine(ae.a(true, j, k, b1, b2));
        switch (b1)
        {
        default:
          this.b.f(k);
          return true;
        case 0:
          if ((b2 & 0x1) != 0)
          {
            bool1 = true;
            if ((b2 & 0x20) == 0)
              break label250;
          }
          for (i = 1; ; i = 0)
          {
            if (i == 0)
              break label256;
            throw ac.a("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            bool1 = false;
            break;
          }
          if ((b2 & 0x8) != 0)
            s1 = (short)(this.b.f() & 0xFF);
          i = ac.a(k, b2, s1);
          paramc.a(bool1, j, this.b, i);
          this.b.f(s1);
          return true;
        case 1:
          if (j == 0)
            throw ac.a("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
          if ((b2 & 0x1) != 0)
          {
            bool1 = true;
            if ((b2 & 0x8) == 0)
              break label426;
          }
          for (s1 = (short)(this.b.f() & 0xFF); ; s1 = 0)
          {
            i = k;
            if ((b2 & 0x20) != 0)
            {
              b();
              i = k - 5;
            }
            paramc.a(false, bool1, j, a(ac.a(i, b2, s1), s1, b2, j), y.d);
            return true;
            bool1 = false;
            break;
          }
        case 2:
          if (k != 5)
            throw ac.a("TYPE_PRIORITY length: %d != 5", new Object[] { Integer.valueOf(k) });
          if (j == 0)
            throw ac.a("TYPE_PRIORITY streamId == 0", new Object[0]);
          b();
          return true;
        case 3:
          if (k != 4)
            throw ac.a("TYPE_RST_STREAM length: %d != 4", new Object[] { Integer.valueOf(k) });
          if (j == 0)
            throw ac.a("TYPE_RST_STREAM streamId == 0", new Object[0]);
          i = this.b.h();
          localObject = a.b(i);
          if (localObject == null)
            throw ac.a("TYPE_RST_STREAM unexpected error code: %d", new Object[] { Integer.valueOf(i) });
          paramc.a(j, (a)localObject);
          return true;
        case 4:
          if (j != 0)
            throw ac.a("TYPE_SETTINGS streamId != 0", new Object[0]);
          if ((b2 & 0x1) == 0)
            break label608;
        case 5:
        case 6:
        case 7:
        case 8:
        }
      }
      while (k == 0);
      throw ac.a("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
      if (k % 6 != 0)
        throw ac.a("TYPE_SETTINGS length %% 6 != 0: %s", new Object[] { Integer.valueOf(k) });
      localObject = new ap();
      j = 0;
      if (j < k)
      {
        int m = this.b.g();
        int n = this.b.h();
        i = m;
        switch (m)
        {
        default:
          i = m;
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        }
        do
        {
          do
          {
            while (true)
            {
              ((ap)localObject).a(i, 0, n);
              j += 6;
              break;
              i = m;
              if (n != 0)
              {
                i = m;
                if (n != 1)
                {
                  throw ac.a("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                  i = 4;
                }
              }
            }
            i = 7;
          }
          while (n >= 0);
          throw ac.a("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
          if (n < 16384)
            break label817;
          i = m;
        }
        while (n <= 16777215);
        throw ac.a("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", new Object[] { Integer.valueOf(n) });
      }
      paramc.a(false, (ap)localObject);
    }
    while (((ap)localObject).a() < 0);
    label256: label426: label608: paramc = this.a;
    label817: int i = ((ap)localObject).a();
    paramc.c = i;
    paramc.d = i;
    paramc.a();
    return true;
    if (j == 0)
      throw ac.a("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
    s1 = s2;
    if ((b2 & 0x8) != 0)
      s1 = (short)(this.b.f() & 0xFF);
    paramc.a(this.b.h() & 0x7FFFFFFF, a(ac.a(k - 4, b2, s1), s1, b2, j));
    return true;
    if (k != 8)
      throw ac.a("TYPE_PING length != 8: %s", new Object[] { Integer.valueOf(k) });
    if (j != 0)
      throw ac.a("TYPE_PING streamId != 0", new Object[0]);
    i = this.b.h();
    int j = this.b.h();
    bool1 = bool2;
    if ((b2 & 0x1) != 0)
      bool1 = true;
    paramc.a(bool1, i, j);
    return true;
    if (k < 8)
      throw ac.a("TYPE_GOAWAY length < 8: %s", new Object[] { Integer.valueOf(k) });
    if (j != 0)
      throw ac.a("TYPE_GOAWAY streamId != 0", new Object[0]);
    i = this.b.h();
    j = this.b.h();
    k -= 8;
    if (a.b(j) == null)
      throw ac.a("TYPE_GOAWAY unexpected error code: %d", new Object[] { Integer.valueOf(j) });
    Object localObject = k.b;
    if (k > 0)
      localObject = this.b.c(k);
    paramc.a(i, (k)localObject);
    return true;
    if (k != 4)
      throw ac.a("TYPE_WINDOW_UPDATE length !=4: %s", new Object[] { Integer.valueOf(k) });
    long l = this.b.h() & 0x7FFFFFFF;
    if (l == 0L)
      throw ac.a("windowSizeIncrement was 0", new Object[] { Long.valueOf(l) });
    paramc.a(j, l);
    return true;
  }

  public final void close()
    throws IOException
  {
    this.b.close();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.af
 * JD-Core Version:    0.6.2
 */