package u.aly;

import java.nio.ByteBuffer;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

public final class cx
{
  private static final Comparator a = new cy((byte)0);

  private static int a(int paramInt1, int paramInt2)
  {
    if (paramInt1 < paramInt2)
      return -1;
    if (paramInt2 < paramInt1)
      return 1;
    return 0;
  }

  public static int a(Comparable paramComparable1, Comparable paramComparable2)
  {
    return paramComparable1.compareTo(paramComparable2);
  }

  public static int a(List paramList1, List paramList2)
  {
    int k = 0;
    int j = a(paramList1.size(), paramList2.size());
    if (j != 0)
      return j;
    int i = 0;
    while (true)
    {
      j = k;
      if (i >= paramList1.size())
        break;
      j = a.compare(paramList1.get(i), paramList2.get(i));
      if (j != 0)
        return j;
      i += 1;
    }
  }

  public static int a(Map paramMap1, Map paramMap2)
  {
    int i = a(paramMap1.size(), paramMap2.size());
    if (i != 0)
      return i;
    Object localObject = new TreeMap(a);
    ((SortedMap)localObject).putAll(paramMap1);
    paramMap1 = ((SortedMap)localObject).entrySet().iterator();
    localObject = new TreeMap(a);
    ((SortedMap)localObject).putAll(paramMap2);
    paramMap2 = ((SortedMap)localObject).entrySet().iterator();
    while ((paramMap1.hasNext()) && (paramMap2.hasNext()))
    {
      localObject = (Map.Entry)paramMap1.next();
      Map.Entry localEntry = (Map.Entry)paramMap2.next();
      i = a.compare(((Map.Entry)localObject).getKey(), localEntry.getKey());
      if (i != 0)
        return i;
      i = a.compare(((Map.Entry)localObject).getValue(), localEntry.getValue());
      if (i != 0)
        return i;
    }
    return 0;
  }

  public static int a(Set paramSet1, Set paramSet2)
  {
    int i = a(paramSet1.size(), paramSet2.size());
    if (i != 0)
      return i;
    TreeSet localTreeSet = new TreeSet(a);
    localTreeSet.addAll(paramSet1);
    paramSet1 = new TreeSet(a);
    paramSet1.addAll(paramSet2);
    paramSet2 = localTreeSet.iterator();
    paramSet1 = paramSet1.iterator();
    while ((paramSet2.hasNext()) && (paramSet1.hasNext()))
    {
      i = a.compare(paramSet2.next(), paramSet1.next());
      if (i != 0)
        return i;
    }
    return 0;
  }

  public static int a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int k = 0;
    int i = a(paramArrayOfByte1.length, paramArrayOfByte2.length);
    if (i != 0)
      return i;
    int j = 0;
    while (true)
    {
      i = k;
      if (j >= paramArrayOfByte1.length)
        break;
      i = paramArrayOfByte1[j];
      int m = paramArrayOfByte2[j];
      if (i < m)
        i = -1;
      while (i != 0)
      {
        return i;
        if (m < i)
          i = 1;
        else
          i = 0;
      }
      j += 1;
    }
  }

  public static void a(ByteBuffer paramByteBuffer, StringBuilder paramStringBuilder)
  {
    byte[] arrayOfByte = paramByteBuffer.array();
    int i = paramByteBuffer.arrayOffset();
    int k = i + paramByteBuffer.position();
    int m = paramByteBuffer.limit() + i;
    if (m - k > 128);
    for (i = k + 128; ; i = m)
    {
      int j = k;
      while (j < i)
      {
        if (j > k)
          paramStringBuilder.append(" ");
        paramStringBuilder.append(Integer.toHexString((arrayOfByte[j] | 0x100) & 0x1FF).toUpperCase().substring(1));
        j += 1;
      }
    }
    if (m != i)
      paramStringBuilder.append("...");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.cx
 * JD-Core Version:    0.6.2
 */