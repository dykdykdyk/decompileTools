package com.loc;

import java.util.Hashtable;

public final class ax
{
  protected static final Hashtable<String, Hashtable<String, String>> a = new Hashtable();

  static
  {
    Hashtable localHashtable1 = new Hashtable();
    localHashtable1.put("even", "bcfguvyz");
    localHashtable1.put("odd", "prxz");
    Hashtable localHashtable2 = new Hashtable();
    localHashtable2.put("even", "0145hjnp");
    localHashtable2.put("odd", "028b");
    Hashtable localHashtable3 = new Hashtable();
    localHashtable3.put("even", "prxz");
    localHashtable3.put("odd", "bcfguvyz");
    Hashtable localHashtable4 = new Hashtable();
    localHashtable4.put("even", "028b");
    localHashtable4.put("odd", "0145hjnp");
    a.put("top", localHashtable1);
    a.put("btm", localHashtable2);
    a.put("right", localHashtable3);
    a.put("left", localHashtable4);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.ax
 * JD-Core Version:    0.6.2
 */