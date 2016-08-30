package com.loc;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.StringTokenizer;

public final class ap
{
  ArrayList<aq> a = new ArrayList();
  ArrayList<as> b = new ArrayList();
  short[][] c = (short[][])Array.newInstance(Short.TYPE, new int[] { 128, 128 });
  ar d = new ar(this);

  public final void a(int paramInt, String paramString)
    throws Exception
  {
    int k = this.b.size();
    Object localObject = new StringTokenizer(paramString, "\\|");
    if (((StringTokenizer)localObject).countTokens() < 3)
      return;
    paramString = new ArrayList();
    while (((StringTokenizer)localObject).hasMoreElements())
      paramString.add(((StringTokenizer)localObject).nextToken());
    localObject = new as(this, Double.parseDouble((String)paramString.get(0)), Double.parseDouble((String)paramString.get(1)), Double.valueOf(Double.parseDouble((String)paramString.get(2))).intValue(), paramInt);
    this.b.add(localObject);
    if (this.b.size() > 128)
      throw new Exception("Atomic Pos Larger Than MAXN 512!");
    int i = 0;
    while (i < k)
    {
      int j = k;
      if (j < this.b.size())
      {
        localObject = (as)this.b.get(i);
        as localas = (as)this.b.get(j);
        double d1 = ((as)localObject).a(localas);
        if (d1 < 500.0D)
          paramInt = 1;
        while (true)
        {
          if (paramInt != 0)
          {
            this.c[i][j] = 1;
            this.c[j][i] = 1;
          }
          j += 1;
          break;
          if (((((as)localObject).e > 0) && (localas.e == 0)) || ((((as)localObject).e == 0) && (localas.e > 0)))
          {
            if ((((as)localObject).e == 1) || (localas.e == 1))
            {
              if ((d1 < 3000.0D) && ((d1 < ((as)localObject).c * 1.5D) || (d1 < localas.c * 1.5D)))
                paramInt = 1;
              else
                paramInt = 0;
            }
            else if (d1 < 5000.0D)
              paramInt = 1;
            else
              paramInt = 0;
          }
          else if ((((as)localObject).e > 0) || (localas.e > 0))
          {
            if ((d1 < 5000.0D) || (d1 < ((as)localObject).c) || (d1 < localas.c))
              paramInt = 1;
            else
              paramInt = 0;
          }
          else if ((d1 < ((as)localObject).c) || (d1 < localas.c) || (d1 < 500.0D))
            paramInt = 1;
          else
            paramInt = 0;
        }
      }
      i += 1;
    }
    paramString.clear();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.ap
 * JD-Core Version:    0.6.2
 */