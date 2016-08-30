package com.loc;

public final class do
{
  boolean a = false;
  double b = 0.0D;
  double c = 0.0D;
  private String d = "";
  private String e = "";
  private boolean f = false;

  protected do(String paramString1, String paramString2)
  {
    this.d = paramString1;
    this.e = paramString2;
    a();
  }

  private void a()
  {
    int m = 0;
    Object localObject = this.e;
    int j;
    if ((localObject != null) && (((String)localObject).length() > 8))
    {
      i = 1;
      j = 0;
      while (i < ((String)localObject).length() - 3)
      {
        j ^= ((String)localObject).charAt(i);
        i += 1;
      }
      if (!Integer.toHexString(j).equalsIgnoreCase(((String)localObject).substring(((String)localObject).length() - 2, ((String)localObject).length())));
    }
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
      {
        localObject = this.e.substring(0, this.e.length() - 3);
        i = 0;
        int k;
        for (j = 0; i < ((String)localObject).length(); j = k)
        {
          k = j;
          if (((String)localObject).charAt(i) == ',')
            k = j + 1;
          i += 1;
        }
        localObject = ((String)localObject).split(",", j + 1);
        if (localObject.length < 6)
          return;
        if ((!localObject[2].equals("")) && (!localObject[(localObject.length - 3)].equals("")) && (!localObject[(localObject.length - 2)].equals("")) && (!localObject[(localObject.length - 1)].equals("")))
        {
          Integer.valueOf(localObject[2]).intValue();
          this.b = Double.valueOf(localObject[(localObject.length - 3)]).doubleValue();
          this.c = Double.valueOf(localObject[(localObject.length - 2)]).doubleValue();
          this.f = true;
        }
      }
      i = m;
      try
      {
        if (this.d != null)
        {
          i = m;
          if (this.d.length() >= 0)
          {
            i = m;
            if (this.d.contains("GPGGA"))
            {
              localObject = this.d.split(",");
              i = m;
              if (localObject.length == 15)
              {
                i = m;
                if (localObject[2] != null)
                {
                  i = m;
                  if (localObject[2].length() > 0)
                  {
                    i = m;
                    if (localObject[4] != null)
                    {
                      i = m;
                      if (localObject[4].length() > 0)
                      {
                        i = m;
                        if (Integer.parseInt(localObject[7]) >= 5)
                        {
                          double d1 = Double.parseDouble(localObject[8]);
                          i = m;
                          if (d1 <= 2.7D)
                            i = 1;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        this.a = (this.f & i);
        return;
      }
      catch (Exception localException)
      {
        while (true)
          i = m;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.do
 * JD-Core Version:    0.6.2
 */