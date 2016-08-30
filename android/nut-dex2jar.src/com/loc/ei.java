package com.loc;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

final class ei extends DefaultHandler
{
  public final void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws SAXException
  {
    if (eh.b())
      eh.a(new String(paramArrayOfChar, paramInt1, paramInt2));
  }

  public final void endElement(String paramString1, String paramString2, String paramString3)
    throws SAXException
  {
    eh.a(false);
  }

  public final void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
    throws SAXException
  {
    if ((paramString2.equals("string")) && ("UTDID".equals(paramAttributes.getValue("name"))))
      eh.a(true);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.ei
 * JD-Core Version:    0.6.2
 */