package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.io.Closeable;

@KeepName
public final class DataHolder extends AbstractSafeParcelable
  implements Closeable
{
  public static final Parcelable.Creator<DataHolder> CREATOR = new c();
  private static final b l = new a(new String[0]);
  final int a;
  final String[] b;
  Bundle c;
  final CursorWindow[] d;
  final int e;
  final Bundle f;
  int[] g;
  int h;
  boolean i = false;
  private Object j;
  private boolean k = true;

  DataHolder(int paramInt1, String[] paramArrayOfString, CursorWindow[] paramArrayOfCursorWindow, int paramInt2, Bundle paramBundle)
  {
    this.a = paramInt1;
    this.b = paramArrayOfString;
    this.d = paramArrayOfCursorWindow;
    this.e = paramInt2;
    this.f = paramBundle;
  }

  private boolean b()
  {
    try
    {
      boolean bool = this.i;
      return bool;
    }
    finally
    {
    }
  }

  public final void a()
  {
    int n = 0;
    this.c = new Bundle();
    int m = 0;
    while (m < this.b.length)
    {
      this.c.putInt(this.b[m], m);
      m += 1;
    }
    this.g = new int[this.d.length];
    int i1 = 0;
    m = n;
    n = i1;
    while (m < this.d.length)
    {
      this.g[m] = n;
      i1 = this.d[m].getStartPosition();
      n += this.d[m].getNumRows() - (n - i1);
      m += 1;
    }
    this.h = n;
  }

  public final void close()
  {
    try
    {
      if (!this.i)
      {
        this.i = true;
        int m = 0;
        while (m < this.d.length)
        {
          this.d[m].close();
          m += 1;
        }
      }
      return;
    }
    finally
    {
    }
  }

  protected final void finalize()
    throws Throwable
  {
    while (true)
    {
      try
      {
        if ((this.k) && (this.d.length > 0) && (!b()))
        {
          if (this.j != null)
            break label121;
          str1 = String.valueOf(toString());
          if (str1.length() != 0)
          {
            str1 = "internal object: ".concat(str1);
            Log.e("DataBuffer", String.valueOf(str1).length() + 161 + "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (" + str1 + ")");
            close();
          }
        }
        else
        {
          return;
        }
        String str1 = new String("internal object: ");
        continue;
      }
      finally
      {
        super.finalize();
      }
      label121: String str2 = this.j.toString();
    }
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.data.DataHolder
 * JD-Core Version:    0.6.2
 */