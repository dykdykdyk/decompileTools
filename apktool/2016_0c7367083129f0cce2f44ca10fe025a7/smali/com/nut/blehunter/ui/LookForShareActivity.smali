.class public Lcom/nut/blehunter/ui/LookForShareActivity;
.super Lcom/nut/blehunter/ui/b;
.source "LookForShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nut/blehunter/ui/b/a/m;


# instance fields
.field a:Lcom/squareup/picasso/Target;

.field private b:Lcom/nut/blehunter/entity/Nut;

.field private c:Lcom/nut/blehunter/entity/User;

.field private d:Landroid/graphics/Bitmap;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 79
    new-instance v0, Lcom/nut/blehunter/ui/cg;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/cg;-><init>(Lcom/nut/blehunter/ui/LookForShareActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->a:Lcom/squareup/picasso/Target;

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/LookForShareActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->d:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private a(Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 289
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    :cond_0
    const-string v0, ""

    .line 292
    :goto_0
    return-object v0

    :cond_1
    const v0, 0x7f06014f

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/LookForShareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/LookForShareActivity;Lcom/nut/blehunter/entity/Nut;)V
    .locals 3

    .prologue
    .line 68
    .line 6259
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 6260
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p1, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/l;->d(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->b:Lcom/nut/blehunter/entity/Nut;

    .line 6261
    invoke-direct {p0}, Lcom/nut/blehunter/ui/LookForShareActivity;->c()V

    .line 6262
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6263
    const-string v1, "device_id"

    iget-object v2, p1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6264
    const/16 v1, 0x20

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/LookForShareActivity;->a(ILandroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method private c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 362
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 363
    const-string v0, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v0, "ENCODE_FORMAT"

    sget-object v1, Lcom/google/zxing/a;->l:Lcom/google/zxing/a;

    invoke-virtual {v1}, Lcom/google/zxing/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v0, "ENCODE_TYPE"

    const-string v1, "TEXT_TYPE"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v0, "ENCODE_DATA"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LookForShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 370
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 371
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 372
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 373
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 374
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 375
    if-ge v0, v1, :cond_0

    .line 376
    :goto_0
    mul-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 379
    :try_start_0
    new-instance v1, Lcom/nut/blehunter/qrcode/b/g;

    invoke-direct {v1, p0, v2, v0}, Lcom/nut/blehunter/qrcode/b/g;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 380
    invoke-virtual {v1}, Lcom/nut/blehunter/qrcode/b/g;->a()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 384
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 375
    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    .line 384
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c()V
    .locals 6

    .prologue
    .line 119
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->c:Lcom/nut/blehunter/entity/User;

    .line 120
    iget-object v0, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->b:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->c:Lcom/nut/blehunter/entity/User;

    .line 1345
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1346
    :cond_0
    const-string v0, ""

    .line 120
    :goto_0
    iput-object v0, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->e:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/LookForShareActivity;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 123
    const v0, 0x7f0d00e5

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LookForShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    const v0, 0x7f0d00e6

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LookForShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->b:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->a:Lcom/squareup/picasso/Target;

    invoke-static {p0, v0, v1}, Lcom/nut/blehunter/t;->a(Landroid/content/Context;Lcom/nut/blehunter/entity/Nut;Lcom/squareup/picasso/Target;)V

    .line 129
    return-void

    .line 1348
    :cond_1
    invoke-static {}, Lcom/nut/blehunter/d/c;->a()J

    move-result-wide v2

    .line 1349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1350
    sget-object v5, Lcom/nut/blehunter/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    const-string v5, "articleShare?articleUUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    iget-object v5, v0, Lcom/nut/blehunter/entity/Nut;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    const-string v5, "&hmac="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/ui/LookForShareActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    const-string v0, "&timestamp="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1357
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 398
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 399
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 400
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 5411
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 5412
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 5413
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 5414
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 5415
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 5417
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5419
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 404
    :goto_1
    return-object v0

    .line 402
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 404
    const-string v0, ""

    goto :goto_1
.end method


# virtual methods
.method public final c(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 144
    packed-switch p1, :pswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 146
    :pswitch_0
    new-instance v0, Lcom/nut/blehunter/c/b;

    invoke-direct {v0}, Lcom/nut/blehunter/c/b;-><init>()V

    invoke-static {p0, v6}, Lcom/nut/blehunter/c/b;->a(Landroid/content/Context;I)Lcom/nut/blehunter/c/g;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->b:Lcom/nut/blehunter/entity/Nut;

    .line 3268
    if-nez v2, :cond_0

    .line 3269
    const-string v2, ""

    .line 148
    :goto_1
    iget-object v3, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->b:Lcom/nut/blehunter/entity/Nut;

    .line 3275
    if-nez v3, :cond_1

    .line 3276
    const-string v3, ""

    .line 148
    :goto_2
    iget-object v4, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->d:Landroid/graphics/Bitmap;

    invoke-interface/range {v0 .. v5}, Lcom/nut/blehunter/c/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 150
    const-string v0, "NTGroupControlEvent"

    const-string v1, "SHARE_VIA_LINK"

    const-string v2, "CHANNEL"

    const-string v3, "0"

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3271
    :cond_0
    const v3, 0x7f060156

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/nut/blehunter/ui/LookForShareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3278
    :cond_1
    const v4, 0x7f060155

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v3, v3, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v3, v6, v5

    invoke-virtual {p0, v4, v6}, Lcom/nut/blehunter/ui/LookForShareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 154
    :pswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->b:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->e:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ui/LookForShareActivity;->a(Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3300
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_4

    .line 3301
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3302
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3303
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3304
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3306
    if-eqz v1, :cond_2

    .line 3307
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3309
    :cond_2
    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/LookForShareActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_3
    :goto_3
    const-string v0, "NTGroupControlEvent"

    const-string v1, "SHARE_VIA_LINK"

    const-string v2, "CHANNEL"

    const-string v3, "1"

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3311
    :cond_4
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3312
    const-string v2, "sms:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3313
    const-string v2, "sms_body"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3314
    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/LookForShareActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 3317
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 159
    :pswitch_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->b:Lcom/nut/blehunter/entity/Nut;

    .line 4282
    if-nez v0, :cond_6

    .line 4283
    const-string v0, ""

    .line 159
    :goto_4
    iget-object v1, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->b:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->e:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/nut/blehunter/ui/LookForShareActivity;->a(Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4322
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 4326
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4327
    const-string v3, "message/rfc822"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4328
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4329
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 4331
    :try_start_3
    const-string v0, "Send mail..."

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LookForShareActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 160
    :cond_5
    :goto_5
    const-string v0, "NTGroupControlEvent"

    const-string v1, "SHARE_VIA_LINK"

    const-string v2, "CHANNEL"

    const-string v3, "2"

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4285
    :cond_6
    const v1, 0x7f060150

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ui/LookForShareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 4333
    :catch_1
    move-exception v0

    :try_start_4
    const-string v0, "There are no email clients installed."

    .line 5039
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 4336
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 135
    :pswitch_0
    invoke-static {}, Lcom/nut/blehunter/ui/b/a/l;->a()Lcom/nut/blehunter/ui/b/a/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/LookForShareActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "look_for_share"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/l;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 137
    const-string v0, "find_mode_share_link"

    .line 2281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00e6
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LookForShareActivity;->setContentView(I)V

    .line 98
    const v0, 0x7f0601dc

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LookForShareActivity;->a(I)V

    .line 99
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/LookForShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    const-string v1, "nut"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    iput-object v0, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->b:Lcom/nut/blehunter/entity/Nut;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->b:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/nut/blehunter/ui/LookForShareActivity;->c()V

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->b:Lcom/nut/blehunter/entity/Nut;

    .line 1166
    const/4 v0, 0x0

    .line 1167
    iget v2, v1, Lcom/nut/blehunter/entity/Nut;->J:I

    packed-switch v2, :pswitch_data_0

    .line 1178
    :goto_1
    if-eqz v0, :cond_1

    .line 1179
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/m;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/h;->b(Lrx/m;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/m;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/h;->a(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v2, Lcom/nut/blehunter/ui/cj;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/cj;-><init>(Lcom/nut/blehunter/ui/LookForShareActivity;)V

    invoke-virtual {v0, v2}, Lrx/h;->a(Lrx/b/f;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/m;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/h;->a(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v2, Lcom/nut/blehunter/ui/ci;

    invoke-direct {v2, p0, v1}, Lcom/nut/blehunter/ui/ci;-><init>(Lcom/nut/blehunter/ui/LookForShareActivity;Lcom/nut/blehunter/entity/Nut;)V

    invoke-virtual {v0, v2}, Lrx/h;->a(Lrx/b/f;)Lrx/h;

    move-result-object v0

    new-instance v2, Lcom/nut/blehunter/ui/ch;

    invoke-direct {v2, p0, v1}, Lcom/nut/blehunter/ui/ch;-><init>(Lcom/nut/blehunter/ui/LookForShareActivity;Lcom/nut/blehunter/entity/Nut;)V

    invoke-virtual {v0, v2}, Lrx/h;->a(Lrx/k;)Lrx/u;

    goto :goto_0

    .line 1169
    :pswitch_0
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 1170
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->c()Lcom/nut/blehunter/rxApi/service/NutService;

    move-result-object v0

    const-string v2, "v2"

    const-string v3, "bind"

    new-instance v4, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;

    invoke-direct {v4, v1}, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;-><init>(Lcom/nut/blehunter/entity/Nut;)V

    invoke-interface {v0, v2, v3, v4}, Lcom/nut/blehunter/rxApi/service/NutService;->bindNut(Ljava/lang/String;Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;)Lrx/h;

    move-result-object v0

    goto :goto_1

    .line 1174
    :pswitch_1
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 1175
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->c()Lcom/nut/blehunter/rxApi/service/NutService;

    move-result-object v0

    const-string v2, "v3"

    const-string v3, "update"

    new-instance v4, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;

    invoke-direct {v4, v1}, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;-><init>(Lcom/nut/blehunter/entity/Nut;)V

    invoke-interface {v0, v2, v3, v4}, Lcom/nut/blehunter/rxApi/service/NutService;->bindNut(Ljava/lang/String;Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;)Lrx/h;

    move-result-object v0

    goto :goto_1

    .line 1167
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/nut/blehunter/ui/LookForShareActivity;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 115
    :cond_0
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onDestroy()V

    .line 116
    return-void
.end method
