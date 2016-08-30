package com.google.zxing.e.a.a.a;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.a;

public final class t
{
  private final a a;
  private final m b = new m();
  private final StringBuilder c = new StringBuilder();

  t(a parama)
  {
    this.a = parama;
  }

  public static int a(a parama, int paramInt1, int paramInt2)
  {
    int j = 0;
    int i = 0;
    while (i < paramInt2)
    {
      int k = j;
      if (parama.a(paramInt1 + i))
        k = j | 1 << paramInt2 - i - 1;
      i += 1;
      j = k;
    }
    return j;
  }

  private l a()
    throws FormatException
  {
    int i;
    while (true)
    {
      j = this.b.a;
      boolean bool;
      if (j + 7 > this.a.b)
        if (j + 4 <= this.a.b)
        {
          bool = true;
          if (!bool)
            break;
          i = this.b.a;
          if (i + 7 <= this.a.b)
            break label239;
          i = a(i, 4);
          if (i != 0)
            break label215;
          localObject = new q(this.a.b, 10, 10);
          label94: this.b.a = ((r)localObject).d;
          if (((q)localObject).a != 10)
            break label277;
          i = 1;
          label118: if (i == 0)
            break label313;
          if (!((q)localObject).a())
            break label282;
        }
      label277: label282: for (Object localObject = new p(this.b.a, this.c.toString()); ; localObject = new p(this.b.a, this.c.toString(), ((q)localObject).b))
      {
        return new l((p)localObject, true);
        bool = false;
        break;
        i = j;
        while (true)
        {
          if (i >= j + 3)
            break label201;
          if (this.a.a(i))
          {
            bool = true;
            break;
          }
          i += 1;
        }
        label201: bool = this.a.a(j + 3);
        break;
        label215: localObject = new q(this.a.b, i - 1, 10);
        break label94;
        label239: j = a(i, 7);
        localObject = new q(i + 7, (j - 8) / 11, (j - 8) % 11);
        break label94;
        i = 0;
        break label118;
      }
      label313: this.c.append(((q)localObject).a);
      if (((q)localObject).a())
        return new l(new p(this.b.a, this.c.toString()), true);
      this.c.append(((q)localObject).b);
    }
    int j = this.b.a;
    if (j + 1 > this.a.b)
      i = 0;
    while (true)
    {
      if (i != 0)
      {
        this.b.b = n.b;
        this.b.a(4);
      }
      return new l();
      i = 0;
      while (true)
      {
        if ((i >= 4) || (i + j >= this.a.b))
          break label478;
        if (this.a.a(j + i))
        {
          i = 0;
          break;
        }
        i += 1;
      }
      label478: i = 1;
    }
  }

  private boolean a(int paramInt)
  {
    if (paramInt + 1 > this.a.b);
    int i;
    do
    {
      return false;
      i = 0;
      if ((i >= 5) || (i + paramInt >= this.a.b))
        break label75;
      if (i != 2)
        break;
    }
    while (!this.a.a(paramInt + 2));
    while (!this.a.a(paramInt + i))
    {
      i += 1;
      break;
    }
    return false;
    label75: return true;
  }

  private l b()
    throws FormatException
  {
    while (true)
    {
      int i = this.b.a;
      int j;
      o localo;
      if (i + 5 <= this.a.b)
      {
        j = a(i, 5);
        if ((j >= 5) && (j < 16))
        {
          i = 1;
          if (i == 0)
            break;
          i = this.b.a;
          j = a(i, 5);
          if (j != 15)
            break label215;
          localo = new o(i + 5, '$');
        }
      }
      while (true)
      {
        this.b.a = localo.d;
        if (!localo.a())
          break label572;
        return new l(new p(this.b.a, this.c.toString()), true);
        if (i + 7 <= this.a.b)
        {
          j = a(i, 7);
          if ((j >= 64) && (j < 116))
          {
            i = 1;
            break;
          }
          if (i + 8 <= this.a.b)
          {
            i = a(i, 8);
            if ((i >= 232) && (i < 253))
            {
              i = 1;
              break;
            }
          }
        }
        i = 0;
        break;
        label215: if ((j >= 5) && (j < 15))
        {
          localo = new o(i + 5, (char)(j + 48 - 5));
        }
        else
        {
          j = a(i, 7);
          if ((j >= 64) && (j < 90))
          {
            localo = new o(i + 7, (char)(j + 1));
          }
          else
          {
            if ((j < 90) || (j >= 116))
              break label321;
            localo = new o(i + 7, (char)(j + 7));
          }
        }
      }
      label321: char c1;
      switch (a(i, 8))
      {
      default:
        throw FormatException.a();
      case 232:
        c1 = '!';
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
      case 238:
      case 239:
      case 240:
      case 241:
      case 242:
      case 243:
      case 244:
      case 245:
      case 246:
      case 247:
      case 248:
      case 249:
      case 250:
      case 251:
      case 252:
      }
      while (true)
      {
        localo = new o(i + 8, c1);
        break;
        c1 = '"';
        continue;
        c1 = '%';
        continue;
        c1 = '&';
        continue;
        c1 = '\'';
        continue;
        c1 = '(';
        continue;
        c1 = ')';
        continue;
        c1 = '*';
        continue;
        c1 = '+';
        continue;
        c1 = ',';
        continue;
        c1 = '-';
        continue;
        c1 = '.';
        continue;
        c1 = '/';
        continue;
        c1 = ':';
        continue;
        c1 = ';';
        continue;
        c1 = '<';
        continue;
        c1 = '=';
        continue;
        c1 = '>';
        continue;
        c1 = '?';
        continue;
        c1 = '_';
        continue;
        c1 = ' ';
      }
      label572: this.c.append(localo.a);
    }
    if (b(this.b.a))
    {
      this.b.a(3);
      this.b.b = n.a;
    }
    while (!a(this.b.a))
      return new l();
    if (this.b.a + 5 < this.a.b)
      this.b.a(5);
    while (true)
    {
      this.b.b = n.b;
      break;
      this.b.a = this.a.b;
    }
  }

  private boolean b(int paramInt)
  {
    if (paramInt + 3 > this.a.b)
      return false;
    int i = paramInt;
    while (true)
    {
      if (i >= paramInt + 3)
        break label42;
      if (this.a.a(i))
        break;
      i += 1;
    }
    label42: return true;
  }

  final int a(int paramInt1, int paramInt2)
  {
    return a(this.a, paramInt1, paramInt2);
  }

  final p a(int paramInt, String paramString)
    throws FormatException
  {
    this.c.setLength(0);
    if (paramString != null)
      this.c.append(paramString);
    this.b.a = paramInt;
    label141: label270: label663: label677: label680: 
    while (true)
    {
      int i = this.b.a;
      label57: int j;
      label101: boolean bool;
      if (this.b.b == n.b)
      {
        paramInt = 1;
        if (paramInt == 0)
          break label625;
        paramInt = this.b.a;
        if (paramInt + 5 > this.a.b)
          break label309;
        j = a(paramInt, 5);
        if ((j < 5) || (j >= 16))
          break label270;
        paramInt = 1;
        if (paramInt == 0)
          break label511;
        paramInt = this.b.a;
        j = a(paramInt, 5);
        if (j != 15)
          break label314;
        paramString = new o(paramInt + 5, '$');
        this.b.a = paramString.d;
        if (!paramString.a())
          break label496;
        paramString = new l(new p(this.b.a, this.c.toString()), true);
        bool = paramString.b;
        label195: if (i == this.b.a)
          break label677;
      }
      for (paramInt = 1; ; paramInt = 0)
      {
        if (((paramInt != 0) || (bool)) && (!bool))
          break label680;
        paramString = paramString.a;
        if ((paramString == null) || (!paramString.c))
          break label682;
        return new p(this.b.a, this.c.toString(), paramString.b);
        paramInt = 0;
        break;
        if (paramInt + 6 <= this.a.b)
        {
          paramInt = a(paramInt, 6);
          if ((paramInt >= 16) && (paramInt < 63))
          {
            paramInt = 1;
            break label101;
          }
        }
        label309: paramInt = 0;
        break label101;
        label314: if ((j >= 5) && (j < 15))
        {
          paramString = new o(paramInt + 5, (char)(j + 48 - 5));
          break label141;
        }
        j = a(paramInt, 6);
        if ((j >= 32) && (j < 58))
        {
          paramString = new o(paramInt + 6, (char)(j + 33));
          break label141;
        }
        char c1;
        switch (j)
        {
        default:
          throw new IllegalStateException("Decoding invalid alphanumeric value: " + j);
        case 58:
          c1 = '*';
        case 59:
        case 60:
        case 61:
        case 62:
        }
        while (true)
        {
          paramString = new o(paramInt + 6, c1);
          break;
          c1 = ',';
          continue;
          c1 = '-';
          continue;
          c1 = '.';
          continue;
          c1 = '/';
        }
        label496: this.c.append(paramString.a);
        break label57;
        label511: if (b(this.b.a))
        {
          this.b.a(3);
          this.b.b = n.a;
        }
        while (!a(this.b.a))
        {
          paramString = new l();
          break;
        }
        if (this.b.a + 5 < this.a.b)
          this.b.a(5);
        while (true)
        {
          this.b.b = n.c;
          break;
          this.b.a = this.a.b;
        }
        label625: if (this.b.b == n.c);
        for (paramInt = 1; ; paramInt = 0)
        {
          if (paramInt == 0)
            break label663;
          paramString = b();
          bool = paramString.b;
          break;
        }
        paramString = a();
        bool = paramString.b;
        break label195;
      }
    }
    label682: return new p(this.b.a, this.c.toString());
  }

  final String a(StringBuilder paramStringBuilder, int paramInt)
    throws NotFoundException, FormatException
  {
    String str = null;
    p localp = a(paramInt, str);
    str = s.a(localp.a);
    if (str != null)
      paramStringBuilder.append(str);
    if (localp.c);
    for (str = String.valueOf(localp.b); ; str = null)
    {
      if (paramInt == localp.d)
        break label69;
      paramInt = localp.d;
      break;
    }
    label69: return paramStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.a.a.a.t
 * JD-Core Version:    0.6.2
 */