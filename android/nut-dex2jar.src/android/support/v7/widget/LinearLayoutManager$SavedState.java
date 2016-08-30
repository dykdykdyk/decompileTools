package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class LinearLayoutManager$SavedState
  implements Parcelable
{
  public static final Parcelable.Creator<SavedState> CREATOR = new ct();
  int a;
  int b;
  boolean c;

  public LinearLayoutManager$SavedState()
  {
  }

  LinearLayoutManager$SavedState(Parcel paramParcel)
  {
    this.a = paramParcel.readInt();
    this.b = paramParcel.readInt();
    if (paramParcel.readInt() == 1);
    while (true)
    {
      this.c = bool;
      return;
      bool = false;
    }
  }

  public LinearLayoutManager$SavedState(SavedState paramSavedState)
  {
    this.a = paramSavedState.a;
    this.b = paramSavedState.b;
    this.c = paramSavedState.c;
  }

  final boolean a()
  {
    return this.a >= 0;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.a);
    paramParcel.writeInt(this.b);
    if (this.c);
    for (paramInt = 1; ; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.LinearLayoutManager.SavedState
 * JD-Core Version:    0.6.2
 */