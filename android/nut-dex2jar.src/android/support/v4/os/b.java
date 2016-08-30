package android.support.v4.os;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class b<T>
  implements Parcelable.Creator<T>
{
  final c<T> a;

  public b(c<T> paramc)
  {
    this.a = paramc;
  }

  public final T createFromParcel(Parcel paramParcel)
  {
    return this.a.a(paramParcel, null);
  }

  public final T[] newArray(int paramInt)
  {
    return this.a.a(paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.os.b
 * JD-Core Version:    0.6.2
 */