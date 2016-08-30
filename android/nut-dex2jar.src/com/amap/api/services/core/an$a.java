package com.amap.api.services.core;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

class an$a extends DefaultHandler
{
  public void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws SAXException
  {
    if (an.b())
      an.a(new String(paramArrayOfChar, paramInt1, paramInt2));
  }

  public void endElement(String paramString1, String paramString2, String paramString3)
    throws SAXException
  {
    an.a(false);
  }

  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
    throws SAXException
  {
    if ((paramString2.equals("string")) && ("UTDID".equals(paramAttributes.getValue("name"))))
      an.a(true);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.an.a
 * JD-Core Version:    0.6.2
 */