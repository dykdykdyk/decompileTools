package com.nut.blehunter.qrcode;

import android.content.Intent;
import com.google.zxing.a;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

final class g
{
  static final Set<a> a;
  static final Set<a> b;
  static final Set<a> c;
  static final Set<a> d;
  static final Set<a> e;
  static final Set<a> f;
  private static final Pattern g = Pattern.compile(",");
  private static final Set<a> h;
  private static final Map<String, Set<a>> i;

  static
  {
    c = EnumSet.of(a.l);
    d = EnumSet.of(a.f);
    e = EnumSet.of(a.a);
    f = EnumSet.of(a.k);
    a = EnumSet.of(a.o, new a[] { a.p, a.h, a.g, a.m, a.n });
    b = EnumSet.of(a.c, a.d, a.e, a.i, a.b);
    Object localObject = EnumSet.copyOf(a);
    h = (Set)localObject;
    ((Set)localObject).addAll(b);
    localObject = new HashMap();
    i = (Map)localObject;
    ((Map)localObject).put("ONE_D_MODE", h);
    i.put("PRODUCT_MODE", a);
    i.put("QR_CODE_MODE", c);
    i.put("DATA_MATRIX_MODE", d);
    i.put("AZTEC_MODE", e);
    i.put("PDF417_MODE", f);
  }

  static Set<a> a(Intent paramIntent)
  {
    List localList = null;
    String str = paramIntent.getStringExtra("SCAN_FORMATS");
    if (str != null)
      localList = Arrays.asList(g.split(str));
    return a(localList, paramIntent.getStringExtra("SCAN_MODE"));
  }

  private static Set<a> a(Iterable<String> paramIterable, String paramString)
  {
    EnumSet localEnumSet;
    if (paramIterable != null)
    {
      localEnumSet = EnumSet.noneOf(a.class);
      try
      {
        paramIterable = paramIterable.iterator();
        while (paramIterable.hasNext())
          localEnumSet.add(a.valueOf((String)paramIterable.next()));
      }
      catch (IllegalArgumentException paramIterable)
      {
      }
    }
    else
    {
      if (paramString == null)
        break label68;
      return (Set)i.get(paramString);
    }
    return localEnumSet;
    label68: return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.g
 * JD-Core Version:    0.6.2
 */