package okhttp3.internal.a;

final class ae
{
  private static final String[] a;
  private static final String[] b;
  private static final String[] c;

  static
  {
    int k = 0;
    a = new String[] { "DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION" };
    b = new String[64];
    c = new String[256];
    int i = 0;
    while (i < c.length)
    {
      c[i] = String.format("%8s", new Object[] { Integer.toBinaryString(i) }).replace(' ', '0');
      i += 1;
    }
    b[0] = "";
    b[1] = "END_STREAM";
    int[] arrayOfInt = new int[1];
    arrayOfInt[0] = 1;
    b[8] = "PADDED";
    i = 0;
    int j;
    while (i <= 0)
    {
      j = arrayOfInt[i];
      b[(j | 0x8)] = (b[j] + "|PADDED");
      i += 1;
    }
    b[4] = "END_HEADERS";
    b[32] = "PRIORITY";
    b[36] = "END_HEADERS|PRIORITY";
    i = 0;
    while (true)
    {
      j = k;
      if (i >= 3)
        break;
      int m = new int[] { 4, 32, 36 }[i];
      j = 0;
      while (j <= 0)
      {
        int n = arrayOfInt[j];
        b[(n | m)] = (b[n] + '|' + b[m]);
        b[(n | m | 0x8)] = (b[n] + '|' + b[m] + "|PADDED");
        j += 1;
      }
      i += 1;
    }
    while (j < b.length)
    {
      if (b[j] == null)
        b[j] = c[j];
      j += 1;
    }
  }

  static String a(boolean paramBoolean, int paramInt1, int paramInt2, byte paramByte1, byte paramByte2)
  {
    String str2;
    Object localObject;
    if (paramByte1 < a.length)
    {
      str2 = a[paramByte1];
      if (paramByte2 != 0)
        break label92;
      localObject = "";
      label24: if (!paramBoolean)
        break label259;
    }
    label259: for (String str1 = "<<"; ; str1 = ">>")
    {
      return String.format("%s 0x%08x %5d %-13s %s", new Object[] { str1, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), str2, localObject });
      str2 = String.format("0x%02x", new Object[] { Byte.valueOf(paramByte1) });
      break;
      switch (paramByte1)
      {
      case 5:
      default:
        label92: if (paramByte2 >= b.length)
          break;
      case 4:
      case 6:
      case 2:
      case 3:
      case 7:
      case 8:
      }
      for (str1 = b[paramByte2]; ; str1 = c[paramByte2])
      {
        if ((paramByte1 != 5) || ((paramByte2 & 0x4) == 0))
          break label225;
        localObject = str1.replace("HEADERS", "PUSH_PROMISE");
        break;
        if (paramByte2 == 1)
        {
          localObject = "ACK";
          break;
        }
        localObject = c[paramByte2];
        break;
        localObject = c[paramByte2];
        break;
      }
      label225: localObject = str1;
      if (paramByte1 != 0)
        break label24;
      localObject = str1;
      if ((paramByte2 & 0x20) == 0)
        break label24;
      localObject = str1.replace("PRIORITY", "COMPRESSED");
      break label24;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.ae
 * JD-Core Version:    0.6.2
 */