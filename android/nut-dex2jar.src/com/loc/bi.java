package com.loc;

import android.content.Context;
import android.text.TextUtils;
import com.autonavi.aps.amapapi.model.AmapLoc;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONObject;

public final class bi
{
  private static bi a = null;
  private Hashtable<String, ArrayList<bj>> b = new Hashtable();
  private long c = 0L;
  private boolean d = false;

  public static bi a()
  {
    try
    {
      if (a == null)
        a = new bi();
      bi localbi = a;
      return localbi;
    }
    finally
    {
    }
  }

  private bj a(StringBuilder paramStringBuilder, String paramString)
  {
    while (true)
    {
      boolean bool;
      Hashtable localHashtable1;
      Hashtable localHashtable2;
      Hashtable localHashtable3;
      int i;
      int j;
      Object localObject;
      try
      {
        if (!this.b.isEmpty())
        {
          bool = TextUtils.isEmpty(paramStringBuilder);
          if (!bool);
        }
        else
        {
          paramStringBuilder = null;
          return paramStringBuilder;
        }
        if (!this.b.containsKey(paramString))
        {
          paramStringBuilder = null;
          continue;
        }
        localHashtable1 = new Hashtable();
        localHashtable2 = new Hashtable();
        localHashtable3 = new Hashtable();
        ArrayList localArrayList = (ArrayList)this.b.get(paramString);
        i = localArrayList.size() - 1;
        if (i < 0)
          break label575;
        paramString = (bj)localArrayList.get(i);
        if (TextUtils.isEmpty(paramString.b))
          break label566;
        j = 0;
        localObject = paramString.b;
        if (TextUtils.isEmpty((CharSequence)localObject))
          break label580;
        if (TextUtils.isEmpty(paramStringBuilder))
        {
          break label580;
          label147: if (!bool)
            break label301;
          j = 1;
          if (!b(paramString.b, paramStringBuilder))
            break label301;
          paramStringBuilder = paramString;
          label168: localHashtable1.clear();
          localHashtable2.clear();
          localHashtable3.clear();
          continue;
        }
      }
      finally
      {
      }
      label255: double[] arrayOfDouble2;
      label301: int k;
      double d1;
      if ((((String)localObject).contains(",access")) && (paramStringBuilder.indexOf(",access") != -1))
      {
        localObject = ((String)localObject).split(",access");
        if (localObject[0].contains("#"))
        {
          localObject = localObject[0].substring(localObject[0].lastIndexOf("#") + 1);
          if (TextUtils.isEmpty((CharSequence)localObject))
          {
            bool = false;
            continue;
          }
          bool = paramStringBuilder.toString().contains((String)localObject + ",access");
          continue;
          a(paramString.b, localHashtable1);
          a(paramStringBuilder.toString(), localHashtable2);
          localHashtable3.clear();
          localObject = localHashtable1.keySet().iterator();
          while (((Iterator)localObject).hasNext())
            localHashtable3.put((String)((Iterator)localObject).next(), "");
          localObject = localHashtable2.keySet().iterator();
          while (((Iterator)localObject).hasNext())
            localHashtable3.put((String)((Iterator)localObject).next(), "");
          localObject = localHashtable3.keySet();
          double[] arrayOfDouble1 = new double[((Set)localObject).size()];
          arrayOfDouble2 = new double[((Set)localObject).size()];
          Iterator localIterator = ((Set)localObject).iterator();
          k = 0;
          if ((localIterator != null) && (localIterator.hasNext()))
          {
            String str = (String)localIterator.next();
            if (!localHashtable1.containsKey(str))
              break label616;
            d1 = 1.0D;
            label490: arrayOfDouble1[k] = d1;
            if (!localHashtable2.containsKey(str))
              break label621;
            d1 = 1.0D;
            break label601;
          }
          ((Set)localObject).clear();
          localObject = a(arrayOfDouble1, arrayOfDouble2);
          if (localObject[0] < 0.800000011920929D)
            break label626;
          paramStringBuilder = paramString;
          continue;
        }
      }
      else
      {
        label566: label575: label580: label601: label616: label621: label626: 
        while (localObject[1] < 0.618D)
        {
          if (j != 0)
          {
            d1 = localObject[0];
            if (d1 >= 0.618D)
            {
              paramStringBuilder = paramString;
              break label168;
            }
          }
          i -= 1;
          break;
          paramStringBuilder = null;
          break label168;
          bool = false;
          break label147;
          bool = false;
          break label147;
          localObject = localObject[0];
          break label255;
          while (true)
          {
            arrayOfDouble2[k] = d1;
            k += 1;
            break;
            d1 = 0.0D;
            break label490;
            d1 = 0.0D;
          }
        }
        paramStringBuilder = paramString;
      }
    }
  }

  private static void a(String paramString, Hashtable<String, String> paramHashtable)
  {
    if (TextUtils.isEmpty(paramString));
    while (true)
    {
      return;
      paramHashtable.clear();
      paramString = paramString.split("#");
      int j = paramString.length;
      int i = 0;
      while (i < j)
      {
        CharSequence localCharSequence = paramString[i];
        if ((!TextUtils.isEmpty(localCharSequence)) && (!localCharSequence.contains("|")))
          paramHashtable.put(localCharSequence, "");
        i += 1;
      }
    }
  }

  private static double[] a(double[] paramArrayOfDouble1, double[] paramArrayOfDouble2)
  {
    double[] arrayOfDouble = new double[3];
    double d1 = 0.0D;
    double d3 = 0.0D;
    double d2 = 0.0D;
    int m = 0;
    int k = 0;
    int j = 0;
    while (j < paramArrayOfDouble1.length)
    {
      d3 += paramArrayOfDouble1[j] * paramArrayOfDouble1[j];
      d2 += paramArrayOfDouble2[j] * paramArrayOfDouble2[j];
      d1 += paramArrayOfDouble1[j] * paramArrayOfDouble2[j];
      int n = k;
      i = m;
      if (paramArrayOfDouble2[j] == 1.0D)
      {
        m += 1;
        n = k;
        i = m;
        if (paramArrayOfDouble1[j] == 1.0D)
        {
          n = k + 1;
          i = m;
        }
      }
      j += 1;
      k = n;
      m = i;
    }
    d3 = Math.sqrt(d3);
    arrayOfDouble[0] = (d1 / (Math.sqrt(d2) * d3));
    arrayOfDouble[1] = (1.0D * k / m);
    arrayOfDouble[2] = k;
    int i = 0;
    while (i < 2)
    {
      if (arrayOfDouble[i] > 1.0D)
        arrayOfDouble[i] = 1.0D;
      arrayOfDouble[i] = Double.parseDouble(by.a(Double.valueOf(arrayOfDouble[i]), "#.00"));
      i += 1;
    }
    return arrayOfDouble;
  }

  public static boolean b(String paramString, StringBuilder paramStringBuilder)
  {
    boolean bool = false;
    String[] arrayOfString = paramString.split("#");
    paramString = new ArrayList();
    int i = 0;
    while (i < arrayOfString.length)
    {
      if ((arrayOfString[i].contains(",nb")) || (arrayOfString[i].contains(",access")))
        paramString.add(arrayOfString[i]);
      i += 1;
    }
    paramStringBuilder = paramStringBuilder.toString().split("#");
    i = 0;
    int j = 0;
    int m;
    for (int k = 0; j < paramStringBuilder.length; k = m)
    {
      int n;
      if (!paramStringBuilder[j].contains(",nb"))
      {
        n = i;
        m = k;
        if (!paramStringBuilder[j].contains(",access"));
      }
      else
      {
        k += 1;
        n = i;
        m = k;
        if (paramString.contains(paramStringBuilder[j]))
        {
          n = i + 1;
          m = k;
        }
      }
      j += 1;
      i = n;
    }
    j = paramString.size();
    if (i * 2 >= (j + k) * 0.618D)
      bool = true;
    return bool;
  }

  private boolean c()
  {
    long l1 = by.b();
    long l2 = this.c;
    if (this.c != 0L)
    {
      if (this.b.size() > 360);
      while (l1 - l2 > 36000000L)
        return true;
    }
    return false;
  }

  public final AmapLoc a(String paramString, StringBuilder paramStringBuilder)
  {
    while (true)
    {
      try
      {
        boolean bool = paramString.contains("gps");
        if (bool)
        {
          paramString = null;
          return paramString;
        }
        if (c())
        {
          b();
          paramString = null;
          continue;
        }
        if (this.b.isEmpty())
        {
          paramString = null;
          continue;
        }
        if (paramString.contains("cgiwifi"))
        {
          paramStringBuilder = a(paramStringBuilder, paramString);
          paramString = paramStringBuilder;
          if (paramStringBuilder != null);
          if ((paramString == null) || (!by.a(paramString.a)))
            continue;
          paramString.a.f("mem");
          if (TextUtils.isEmpty(dp.g))
            dp.g = String.valueOf(paramString.a.A());
          paramString = paramString.a;
          continue;
        }
        if (paramString.contains("wifi"))
        {
          paramStringBuilder = a(paramStringBuilder, paramString);
          paramString = paramStringBuilder;
          if (paramStringBuilder == null)
            continue;
          paramString = paramStringBuilder;
          continue;
        }
        if ((paramString.contains("cgi")) && (this.b.containsKey(paramString)))
        {
          paramString = (bj)((ArrayList)this.b.get(paramString)).get(0);
          continue;
          paramString = null;
          continue;
        }
      }
      finally
      {
      }
      paramString = null;
    }
  }

  public final void a(Context paramContext)
  {
    if (this.d)
      return;
    by.b();
    try
    {
      bk.a().a(paramContext);
      label19: this.d = true;
      return;
    }
    catch (Exception paramContext)
    {
      break label19;
    }
  }

  public final void a(String paramString, StringBuilder paramStringBuilder, AmapLoc paramAmapLoc, Context paramContext, boolean paramBoolean)
  {
    int i = 1;
    int j = 0;
    while (true)
    {
      int k;
      Object localObject2;
      try
      {
        if (!TextUtils.isEmpty(paramString))
        {
          boolean bool = by.a(paramAmapLoc);
          if (bool);
        }
        else
        {
          i = 0;
          if (i != 0)
            continue;
          return;
        }
        if (paramString.startsWith("#"))
        {
          i = 0;
          continue;
        }
        if (paramString.contains("network"))
          continue;
        i = 0;
        continue;
        if ((paramAmapLoc.l().equals("mem")) || (paramAmapLoc.l().equals("file")) || (paramAmapLoc.m().equals("-3")))
          continue;
        if (c())
          b();
        localObject1 = paramAmapLoc.D();
        if (by.a((JSONObject)localObject1, "offpct"))
        {
          ((JSONObject)localObject1).remove("offpct");
          paramAmapLoc.a((JSONObject)localObject1);
        }
        if (paramString.contains("wifi"))
        {
          if (TextUtils.isEmpty(paramStringBuilder))
            continue;
          if (paramAmapLoc.j() >= 300.0F)
          {
            localObject1 = paramStringBuilder.toString().split("#");
            int m = localObject1.length;
            k = 0;
            i = j;
            j = k;
            if (i >= m)
              break label551;
            k = j;
            if (!localObject1[i].contains(","))
              break label538;
            k = j + 1;
            break label538;
            if ((paramString.contains("cgiwifi")) && (!TextUtils.isEmpty(paramAmapLoc.B())))
            {
              localObject1 = paramString.replace("cgiwifi", "cgi");
              localObject2 = paramAmapLoc.C();
              if (by.a((AmapLoc)localObject2))
                a((String)localObject1, new StringBuilder(), (AmapLoc)localObject2, paramContext, true);
            }
            localObject1 = a(paramString, paramStringBuilder);
            if ((by.a((AmapLoc)localObject1)) && (((AmapLoc)localObject1).E().equals(paramAmapLoc.c(3))))
              continue;
            this.c = by.b();
            localObject2 = new bj(this);
            ((bj)localObject2).a = paramAmapLoc;
            if (!TextUtils.isEmpty(paramStringBuilder))
              continue;
            localObject1 = null;
            if (!TextUtils.isEmpty((CharSequence)localObject1))
              continue;
            ((bj)localObject2).b = null;
            if (!this.b.containsKey(paramString))
              break label507;
            ((ArrayList)this.b.get(paramString)).add(localObject2);
            if (!paramBoolean)
              continue;
            try
            {
              bk.a().a(paramString, paramAmapLoc, paramStringBuilder, paramContext);
            }
            catch (Exception paramString)
            {
            }
            continue;
          }
          if (paramAmapLoc.j() > 10.0F)
            continue;
          continue;
        }
        if (!paramString.contains("cgi"))
          continue;
        if (paramStringBuilder.indexOf(",") != -1)
          continue;
        if (!paramAmapLoc.m().equals("4"))
          continue;
        continue;
        localObject1 = paramStringBuilder.toString();
        continue;
        ((bj)localObject2).b = ((String)localObject1).replace("##", "#");
        continue;
      }
      finally
      {
      }
      label507: Object localObject1 = new ArrayList();
      ((ArrayList)localObject1).add(localObject2);
      this.b.put(paramString, localObject1);
      continue;
      label538: i += 1;
      j = k;
      continue;
      label551: if (j >= 8);
    }
  }

  public final void b()
  {
    this.c = 0L;
    if (!this.b.isEmpty())
      this.b.clear();
    this.d = false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.bi
 * JD-Core Version:    0.6.2
 */