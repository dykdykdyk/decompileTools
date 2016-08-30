package com.nut.blehunter.qrcode.b;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class i
  implements b
{
  private static final Pattern a = Pattern.compile("([\\\\,;])");
  private static final Pattern b = Pattern.compile("\\n");
  private final List<Map<String, Set<String>>> c;

  i()
  {
    this(null);
  }

  i(List<Map<String, Set<String>>> paramList)
  {
    this.c = paramList;
  }

  public final CharSequence a(CharSequence paramCharSequence, int paramInt)
  {
    paramCharSequence = a.matcher(paramCharSequence).replaceAll("\\\\$1");
    String str = b.matcher(paramCharSequence).replaceAll("");
    StringBuilder localStringBuilder;
    if ((this.c == null) || (this.c.size() <= paramInt))
    {
      paramCharSequence = null;
      localStringBuilder = new StringBuilder();
      if (paramCharSequence != null)
        paramCharSequence = paramCharSequence.entrySet().iterator();
    }
    else
    {
      while (true)
      {
        if (!paramCharSequence.hasNext())
          break label263;
        Object localObject = (Map.Entry)paramCharSequence.next();
        Set localSet = (Set)((Map.Entry)localObject).getValue();
        if ((localSet != null) && (!localSet.isEmpty()))
        {
          localStringBuilder.append(';').append((String)((Map.Entry)localObject).getKey()).append('=');
          if (localSet.size() > 1)
            localStringBuilder.append('"');
          localObject = localSet.iterator();
          localStringBuilder.append((String)((Iterator)localObject).next());
          while (true)
            if (((Iterator)localObject).hasNext())
            {
              localStringBuilder.append(',').append((String)((Iterator)localObject).next());
              continue;
              paramCharSequence = (Map)this.c.get(paramInt);
              break;
            }
          if (localSet.size() > 1)
            localStringBuilder.append('"');
        }
      }
    }
    label263: localStringBuilder.append(':').append(str);
    return localStringBuilder;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.b.i
 * JD-Core Version:    0.6.2
 */