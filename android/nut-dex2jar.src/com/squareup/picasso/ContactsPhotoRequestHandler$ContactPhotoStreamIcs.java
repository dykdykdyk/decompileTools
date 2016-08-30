package com.squareup.picasso;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.net.Uri;
import android.provider.ContactsContract.Contacts;
import java.io.InputStream;

@TargetApi(14)
class ContactsPhotoRequestHandler$ContactPhotoStreamIcs
{
  static InputStream get(ContentResolver paramContentResolver, Uri paramUri)
  {
    return ContactsContract.Contacts.openContactPhotoInputStream(paramContentResolver, paramUri, true);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.ContactsPhotoRequestHandler.ContactPhotoStreamIcs
 * JD-Core Version:    0.6.2
 */