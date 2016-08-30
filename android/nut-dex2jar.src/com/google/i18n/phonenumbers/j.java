package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

public final class j
  implements Externalizable
{
  private boolean a;
  private String b = "";
  private boolean c;
  private String d = "";
  private List<String> e = new ArrayList();
  private boolean f;
  private String g = "";
  private boolean h;
  private boolean i = false;
  private boolean j;
  private String k = "";

  public final void readExternal(ObjectInput paramObjectInput)
    throws IOException
  {
    String str = paramObjectInput.readUTF();
    this.a = true;
    this.b = str;
    str = paramObjectInput.readUTF();
    this.c = true;
    this.d = str;
    int n = paramObjectInput.readInt();
    int m = 0;
    while (m < n)
    {
      this.e.add(paramObjectInput.readUTF());
      m += 1;
    }
    if (paramObjectInput.readBoolean())
    {
      str = paramObjectInput.readUTF();
      this.f = true;
      this.g = str;
    }
    if (paramObjectInput.readBoolean())
    {
      str = paramObjectInput.readUTF();
      this.j = true;
      this.k = str;
    }
    boolean bool = paramObjectInput.readBoolean();
    this.h = true;
    this.i = bool;
  }

  public final void writeExternal(ObjectOutput paramObjectOutput)
    throws IOException
  {
    paramObjectOutput.writeUTF(this.b);
    paramObjectOutput.writeUTF(this.d);
    int n = this.e.size();
    paramObjectOutput.writeInt(n);
    int m = 0;
    while (m < n)
    {
      paramObjectOutput.writeUTF((String)this.e.get(m));
      m += 1;
    }
    paramObjectOutput.writeBoolean(this.f);
    if (this.f)
      paramObjectOutput.writeUTF(this.g);
    paramObjectOutput.writeBoolean(this.j);
    if (this.j)
      paramObjectOutput.writeUTF(this.k);
    paramObjectOutput.writeBoolean(this.i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.j
 * JD-Core Version:    0.6.2
 */