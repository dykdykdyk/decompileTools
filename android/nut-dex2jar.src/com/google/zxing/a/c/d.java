package com.google.zxing.a.c;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class d
{
  static final String[] a = { "UPPER", "LOWER", "DIGIT", "MIXED", "PUNCT" };
  static final int[][] b;
  static final int[][] c;
  private static final int[][] e;
  final byte[] d;

  static
  {
    Object localObject = { 590318, 0, 327710, 327709, 656318 };
    int[] arrayOfInt = { 262158, 590300, 0, 590301, 932798 };
    b = new int[][] { { 0, 327708, 327710, 327709, 656318 }, localObject, arrayOfInt, { 327709, 327708, 656318, 0, 327710 }, { 327711, 656380, 656382, 656381, 0 } };
    localObject = (int[][])Array.newInstance(Integer.TYPE, new int[] { 5, 256 });
    e = (int[][])localObject;
    localObject[0][32] = 1;
    int i = 65;
    while (i <= 90)
    {
      e[0][i] = (i - 65 + 2);
      i += 1;
    }
    e[1][32] = 1;
    i = 97;
    while (i <= 122)
    {
      e[1][i] = (i - 97 + 2);
      i += 1;
    }
    e[2][32] = 1;
    i = 48;
    while (i <= 57)
    {
      e[2][i] = (i - 48 + 2);
      i += 1;
    }
    e[2][44] = 12;
    e[2][46] = 13;
    i = 0;
    while (i < 28)
    {
      e[3][new int[] { 0, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 27, 28, 29, 30, 31, 64, 92, 94, 95, 96, 124, 126, 127 }[i]] = i;
      i += 1;
    }
    localObject = new int[31];
    Object tmp542_541 = localObject;
    tmp542_541[0] = 0;
    Object tmp546_542 = tmp542_541;
    tmp546_542[1] = 13;
    Object tmp551_546 = tmp546_542;
    tmp551_546[2] = 0;
    Object tmp555_551 = tmp551_546;
    tmp555_551[3] = 0;
    Object tmp559_555 = tmp555_551;
    tmp559_555[4] = 0;
    Object tmp563_559 = tmp559_555;
    tmp563_559[5] = 0;
    Object tmp567_563 = tmp563_559;
    tmp567_563[6] = 33;
    Object tmp573_567 = tmp567_563;
    tmp573_567[7] = 39;
    Object tmp579_573 = tmp573_567;
    tmp579_573[8] = 35;
    Object tmp585_579 = tmp579_573;
    tmp585_579[9] = 36;
    Object tmp591_585 = tmp585_579;
    tmp591_585[10] = 37;
    Object tmp597_591 = tmp591_585;
    tmp597_591[11] = 38;
    Object tmp603_597 = tmp597_591;
    tmp603_597[12] = 39;
    Object tmp609_603 = tmp603_597;
    tmp609_603[13] = 40;
    Object tmp615_609 = tmp609_603;
    tmp615_609[14] = 41;
    Object tmp621_615 = tmp615_609;
    tmp621_615[15] = 42;
    Object tmp627_621 = tmp621_615;
    tmp627_621[16] = 43;
    Object tmp633_627 = tmp627_621;
    tmp633_627[17] = 44;
    Object tmp639_633 = tmp633_627;
    tmp639_633[18] = 45;
    Object tmp645_639 = tmp639_633;
    tmp645_639[19] = 46;
    Object tmp651_645 = tmp645_639;
    tmp651_645[20] = 47;
    Object tmp657_651 = tmp651_645;
    tmp657_651[21] = 58;
    Object tmp663_657 = tmp657_651;
    tmp663_657[22] = 59;
    Object tmp669_663 = tmp663_657;
    tmp669_663[23] = 60;
    Object tmp675_669 = tmp669_663;
    tmp675_669[24] = 61;
    Object tmp681_675 = tmp675_669;
    tmp681_675[25] = 62;
    Object tmp687_681 = tmp681_675;
    tmp687_681[26] = 63;
    Object tmp693_687 = tmp687_681;
    tmp693_687[27] = 91;
    Object tmp699_693 = tmp693_687;
    tmp699_693[28] = 93;
    Object tmp705_699 = tmp699_693;
    tmp705_699[29] = 123;
    Object tmp711_705 = tmp705_699;
    tmp711_705[30] = 125;
    tmp711_705;
    i = 0;
    while (i < 31)
    {
      if (localObject[i] > 0)
        e[4][localObject[i]] = i;
      i += 1;
    }
    localObject = (int[][])Array.newInstance(Integer.TYPE, new int[] { 6, 6 });
    c = (int[][])localObject;
    int j = localObject.length;
    i = 0;
    while (i < j)
    {
      Arrays.fill(localObject[i], -1);
      i += 1;
    }
    c[0][4] = 0;
    c[1][4] = 0;
    c[1][0] = 28;
    c[3][4] = 0;
    c[2][4] = 0;
    c[2][0] = 15;
  }

  public d(byte[] paramArrayOfByte)
  {
    this.d = paramArrayOfByte;
  }

  static Collection<g> a(Iterable<g> paramIterable)
  {
    LinkedList localLinkedList = new LinkedList();
    paramIterable = paramIterable.iterator();
    label42: label111: label114: 
    while (true)
    {
      g localg1;
      Iterator localIterator;
      g localg2;
      if (paramIterable.hasNext())
      {
        localg1 = (g)paramIterable.next();
        localIterator = localLinkedList.iterator();
        if (!localIterator.hasNext())
          break label111;
        localg2 = (g)localIterator.next();
        if (!localg2.a(localg1));
      }
      for (int i = 0; ; i = 1)
      {
        if (i == 0)
          break label114;
        localLinkedList.add(localg1);
        break;
        if (!localg1.a(localg2))
          break label42;
        localIterator.remove();
        break label42;
        return localLinkedList;
      }
    }
  }

  static Collection<g> a(Iterable<g> paramIterable, int paramInt1, int paramInt2)
  {
    LinkedList localLinkedList = new LinkedList();
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      g localg1 = (g)paramIterable.next();
      g localg2 = localg1.b(paramInt1);
      localLinkedList.add(localg2.a(4, paramInt2));
      if (localg1.b != 4)
        localLinkedList.add(localg2.b(4, paramInt2));
      if ((paramInt2 == 3) || (paramInt2 == 4))
        localLinkedList.add(localg2.a(2, 16 - paramInt2).a(2, 1));
      if (localg1.c > 0)
        localLinkedList.add(localg1.a(paramInt1).a(paramInt1 + 1));
    }
    return a(localLinkedList);
  }

  final void a(g paramg, int paramInt, Collection<g> paramCollection)
  {
    int k = (char)(this.d[paramInt] & 0xFF);
    if (e[paramg.b][k] > 0);
    for (int i = 1; ; i = 0)
    {
      Object localObject1 = null;
      int j = 0;
      while (j <= 4)
      {
        int m = e[j][k];
        Object localObject3 = localObject1;
        if (m > 0)
        {
          Object localObject2 = localObject1;
          if (localObject1 == null)
            localObject2 = paramg.b(paramInt);
          if ((i == 0) || (j == paramg.b) || (j == 2))
            paramCollection.add(((g)localObject2).a(j, m));
          localObject3 = localObject2;
          if (i == 0)
          {
            localObject3 = localObject2;
            if (c[paramg.b][j] >= 0)
            {
              paramCollection.add(((g)localObject2).b(j, m));
              localObject3 = localObject2;
            }
          }
        }
        j += 1;
        localObject1 = localObject3;
      }
    }
    if ((paramg.c > 0) || (e[paramg.b][k] == 0))
      paramCollection.add(paramg.a(paramInt));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.a.c.d
 * JD-Core Version:    0.6.2
 */