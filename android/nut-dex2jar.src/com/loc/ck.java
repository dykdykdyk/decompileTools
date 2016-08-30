package com.loc;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

public final class ck
{
  protected File a;
  protected int[] b;
  boolean c = false;
  private ArrayList d;

  protected ck(File paramFile, ArrayList paramArrayList, int[] paramArrayOfInt)
  {
    this.a = paramFile;
    this.d = paramArrayList;
    this.b = paramArrayOfInt;
  }

  public final byte[] a()
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext())
    {
      byte[] arrayOfByte = (byte[])localIterator.next();
      try
      {
        localDataOutputStream.writeInt(arrayOfByte.length);
        localDataOutputStream.write(arrayOfByte);
      }
      catch (IOException localIOException2)
      {
      }
    }
    try
    {
      localByteArrayOutputStream.close();
      localDataOutputStream.close();
      label74: return localByteArrayOutputStream.toByteArray();
    }
    catch (IOException localIOException1)
    {
      break label74;
    }
  }

  protected final int b()
  {
    if (this.d == null)
      return 0;
    int i = 0;
    int j = 0;
    if (i < this.d.size())
    {
      if (this.d.get(i) != null);
      for (int k = ((byte[])this.d.get(i)).length; ; k = 0)
      {
        j += k;
        i += 1;
        break;
      }
    }
    return j;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.ck
 * JD-Core Version:    0.6.2
 */