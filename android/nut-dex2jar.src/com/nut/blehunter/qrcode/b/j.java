package com.nut.blehunter.qrcode.b;

import android.telephony.PhoneNumberUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class j
  implements b
{
  private final List<Map<String, Set<String>>> a;

  j()
  {
    this(null);
  }

  j(List<Map<String, Set<String>>> paramList)
  {
    this.a = paramList;
  }

  public final CharSequence a(CharSequence paramCharSequence, int paramInt)
  {
    String str = PhoneNumberUtils.formatNumber(paramCharSequence.toString());
    if ((this.a == null) || (this.a.size() <= paramInt));
    for (paramCharSequence = null; (paramCharSequence == null) || (paramCharSequence.isEmpty()); paramCharSequence = (Map)this.a.get(paramInt))
      return str;
    StringBuilder localStringBuilder = new StringBuilder();
    paramCharSequence = paramCharSequence.entrySet().iterator();
    while (paramCharSequence.hasNext())
    {
      Object localObject = (Set)((Map.Entry)paramCharSequence.next()).getValue();
      if ((localObject != null) && (!((Set)localObject).isEmpty()))
      {
        localObject = ((Set)localObject).iterator();
        localStringBuilder.append((String)((Iterator)localObject).next());
        while (((Iterator)localObject).hasNext())
          localStringBuilder.append(',').append((String)((Iterator)localObject).next());
      }
    }
    if (localStringBuilder.length() > 0)
      localStringBuilder.append(' ');
    localStringBuilder.append(str);
    return localStringBuilder;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.b.j
 * JD-Core Version:    0.6.2
 */