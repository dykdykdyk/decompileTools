package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

public final class m
  implements Externalizable
{
  String a = "";
  String b = "";
  private boolean c;
  private boolean d;
  private boolean e;
  private String f = "";

  public final void readExternal(ObjectInput paramObjectInput)
    throws IOException
  {
    String str;
    if (paramObjectInput.readBoolean())
    {
      str = paramObjectInput.readUTF();
      this.c = true;
      this.a = str;
    }
    if (paramObjectInput.readBoolean())
    {
      str = paramObjectInput.readUTF();
      this.d = true;
      this.b = str;
    }
    if (paramObjectInput.readBoolean())
    {
      paramObjectInput = paramObjectInput.readUTF();
      this.e = true;
      this.f = paramObjectInput;
    }
  }

  public final void writeExternal(ObjectOutput paramObjectOutput)
    throws IOException
  {
    paramObjectOutput.writeBoolean(this.c);
    if (this.c)
      paramObjectOutput.writeUTF(this.a);
    paramObjectOutput.writeBoolean(this.d);
    if (this.d)
      paramObjectOutput.writeUTF(this.b);
    paramObjectOutput.writeBoolean(this.e);
    if (this.e)
      paramObjectOutput.writeUTF(this.f);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.m
 * JD-Core Version:    0.6.2
 */