package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

final class BackStackState
  implements Parcelable
{
  public static final Parcelable.Creator<BackStackState> CREATOR = new o();
  final int[] a;
  final int b;
  final int c;
  final String d;
  final int e;
  final int f;
  final CharSequence g;
  final int h;
  final CharSequence i;
  final ArrayList<String> j;
  final ArrayList<String> k;

  public BackStackState(Parcel paramParcel)
  {
    this.a = paramParcel.createIntArray();
    this.b = paramParcel.readInt();
    this.c = paramParcel.readInt();
    this.d = paramParcel.readString();
    this.e = paramParcel.readInt();
    this.f = paramParcel.readInt();
    this.g = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.h = paramParcel.readInt();
    this.i = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.j = paramParcel.createStringArrayList();
    this.k = paramParcel.createStringArrayList();
  }

  public BackStackState(i parami)
  {
    m localm = parami.c;
    int n;
    for (int m = 0; localm != null; m = n)
    {
      n = m;
      if (localm.i != null)
        n = m + localm.i.size();
      localm = localm.a;
    }
    this.a = new int[m + parami.e * 7];
    if (!parami.l)
      throw new IllegalStateException("Not on back stack");
    localm = parami.c;
    m = 0;
    if (localm != null)
    {
      int[] arrayOfInt = this.a;
      n = m + 1;
      arrayOfInt[m] = localm.c;
      arrayOfInt = this.a;
      int i1 = n + 1;
      if (localm.d != null);
      for (m = localm.d.mIndex; ; m = -1)
      {
        arrayOfInt[n] = m;
        arrayOfInt = this.a;
        m = i1 + 1;
        arrayOfInt[i1] = localm.e;
        arrayOfInt = this.a;
        n = m + 1;
        arrayOfInt[m] = localm.f;
        arrayOfInt = this.a;
        m = n + 1;
        arrayOfInt[n] = localm.g;
        arrayOfInt = this.a;
        n = m + 1;
        arrayOfInt[m] = localm.h;
        if (localm.i == null)
          break label314;
        i1 = localm.i.size();
        arrayOfInt = this.a;
        m = n + 1;
        arrayOfInt[n] = i1;
        n = 0;
        while (n < i1)
        {
          this.a[m] = ((Fragment)localm.i.get(n)).mIndex;
          n += 1;
          m += 1;
        }
      }
      while (true)
      {
        localm = localm.a;
        break;
        label314: arrayOfInt = this.a;
        m = n + 1;
        arrayOfInt[n] = 0;
      }
    }
    this.b = parami.j;
    this.c = parami.k;
    this.d = parami.n;
    this.e = parami.p;
    this.f = parami.q;
    this.g = parami.r;
    this.h = parami.s;
    this.i = parami.t;
    this.j = parami.u;
    this.k = parami.v;
  }

  public final i a(ad paramad)
  {
    i locali = new i(paramad);
    int i1 = 0;
    int m = 0;
    while (m < this.a.length)
    {
      m localm = new m();
      Object localObject = this.a;
      int n = m + 1;
      localm.c = localObject[m];
      if (ad.a)
        Log.v("FragmentManager", "Instantiate " + locali + " op #" + i1 + " base fragment #" + this.a[n]);
      localObject = this.a;
      m = n + 1;
      n = localObject[n];
      if (n >= 0);
      for (localm.d = ((Fragment)paramad.f.get(n)); ; localm.d = null)
      {
        localObject = this.a;
        n = m + 1;
        localm.e = localObject[m];
        localObject = this.a;
        m = n + 1;
        localm.f = localObject[n];
        localObject = this.a;
        n = m + 1;
        localm.g = localObject[m];
        localObject = this.a;
        m = n + 1;
        localm.h = localObject[n];
        localObject = this.a;
        n = m + 1;
        int i3 = localObject[m];
        m = n;
        if (i3 <= 0)
          break;
        localm.i = new ArrayList(i3);
        int i2 = 0;
        while (true)
        {
          m = n;
          if (i2 >= i3)
            break;
          if (ad.a)
            Log.v("FragmentManager", "Instantiate " + locali + " set remove fragment #" + this.a[n]);
          localObject = (Fragment)paramad.f.get(this.a[n]);
          localm.i.add(localObject);
          i2 += 1;
          n += 1;
        }
      }
      locali.f = localm.e;
      locali.g = localm.f;
      locali.h = localm.g;
      locali.i = localm.h;
      locali.a(localm);
      i1 += 1;
    }
    locali.j = this.b;
    locali.k = this.c;
    locali.n = this.d;
    locali.p = this.e;
    locali.l = true;
    locali.q = this.f;
    locali.r = this.g;
    locali.s = this.h;
    locali.t = this.i;
    locali.u = this.j;
    locali.v = this.k;
    locali.a(1);
    return locali;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeIntArray(this.a);
    paramParcel.writeInt(this.b);
    paramParcel.writeInt(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeInt(this.e);
    paramParcel.writeInt(this.f);
    TextUtils.writeToParcel(this.g, paramParcel, 0);
    paramParcel.writeInt(this.h);
    TextUtils.writeToParcel(this.i, paramParcel, 0);
    paramParcel.writeStringList(this.j);
    paramParcel.writeStringList(this.k);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.BackStackState
 * JD-Core Version:    0.6.2
 */