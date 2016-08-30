package com.nut.blehunter.qrcode.b;

import java.util.List;

final class c extends a
{
  public final String[] a(List<String> paramList1, String paramString1, List<String> paramList2, List<String> paramList3, List<String> paramList4, List<String> paramList5, List<String> paramList6, String paramString2)
  {
    paramList4 = new StringBuilder(100);
    paramList4.append("MECARD:");
    StringBuilder localStringBuilder = new StringBuilder(100);
    d locald = new d((byte)0);
    a(paramList4, localStringBuilder, "N", paramList1, 1, new e((byte)0), locald, ';');
    a(paramList4, localStringBuilder, "ORG", paramString1, locald, ';');
    a(paramList4, localStringBuilder, "ADR", paramList2, 1, null, locald, ';');
    a(paramList4, localStringBuilder, "TEL", paramList3, 2147483647, new f((byte)0), locald, ';');
    a(paramList4, localStringBuilder, "EMAIL", paramList5, 2147483647, null, locald, ';');
    a(paramList4, localStringBuilder, "URL", paramList6, 2147483647, null, locald, ';');
    a(paramList4, localStringBuilder, "NOTE", paramString2, locald, ';');
    paramList4.append(';');
    return new String[] { paramList4.toString(), localStringBuilder.toString() };
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.b.c
 * JD-Core Version:    0.6.2
 */