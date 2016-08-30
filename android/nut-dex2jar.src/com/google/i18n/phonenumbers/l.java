package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

public final class l
  implements Externalizable
{
  List<k> a = new ArrayList();

  public final void readExternal(ObjectInput paramObjectInput)
    throws IOException
  {
    int j = paramObjectInput.readInt();
    int i = 0;
    while (i < j)
    {
      k localk = new k();
      localk.readExternal(paramObjectInput);
      this.a.add(localk);
      i += 1;
    }
  }

  public final void writeExternal(ObjectOutput paramObjectOutput)
    throws IOException
  {
    int j = this.a.size();
    paramObjectOutput.writeInt(j);
    int i = 0;
    while (i < j)
    {
      ((k)this.a.get(i)).writeExternal(paramObjectOutput);
      i += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.l
 * JD-Core Version:    0.6.2
 */