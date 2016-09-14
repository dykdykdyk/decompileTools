.class public final Lcom/nut/blehunter/qrcode/b/g;
.super Ljava/lang/Object;
.source "QRCodeEncoder.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/zxing/a;

.field private final f:I

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/nut/blehunter/qrcode/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/qrcode/b/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/nut/blehunter/qrcode/b/g;->b:Landroid/content/Context;

    .line 74
    iput p3, p0, Lcom/nut/blehunter/qrcode/b/g;->f:I

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/qrcode/b/g;->g:Z

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v1, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-direct {p0, p2}, Lcom/nut/blehunter/qrcode/b/g;->a(Landroid/content/Intent;)Z

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1134
    invoke-direct {p0, p2}, Lcom/nut/blehunter/qrcode/b/g;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 1142
    :cond_2
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/qrcode/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1143
    if-nez v0, :cond_3

    .line 1144
    const-string v0, "android.intent.extra.HTML_TEXT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/qrcode/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1146
    if-nez v0, :cond_3

    .line 1147
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/qrcode/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1148
    if-nez v0, :cond_3

    .line 1149
    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1150
    if-eqz v0, :cond_5

    .line 1151
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/nut/blehunter/qrcode/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1160
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1161
    :cond_4
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Empty EXTRA_TEXT"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1153
    :cond_5
    const-string v0, "?"

    goto :goto_1

    .line 1163
    :cond_6
    iput-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->c:Ljava/lang/String;

    .line 1165
    sget-object v0, Lcom/google/zxing/a;->l:Lcom/google/zxing/a;

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->e:Lcom/google/zxing/a;

    .line 1166
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1167
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->d:Ljava/lang/String;

    goto :goto_0

    .line 1168
    :cond_7
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1169
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 1171
    :cond_8
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->d:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static a(Landroid/os/Bundle;[Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 309
    array-length v3, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    .line 310
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 311
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 313
    :cond_1
    return-object v2
.end method

.method private static a([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 104
    const-string v0, "ENCODE_FORMAT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iput-object v7, p0, Lcom/nut/blehunter/qrcode/b/g;->e:Lcom/google/zxing/a;

    .line 106
    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    invoke-static {v0}, Lcom/google/zxing/a;->valueOf(Ljava/lang/String;)Lcom/google/zxing/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->e:Lcom/google/zxing/a;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->e:Lcom/google/zxing/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->e:Lcom/google/zxing/a;

    sget-object v1, Lcom/google/zxing/a;->l:Lcom/google/zxing/a;

    if-ne v0, v1, :cond_8

    .line 114
    :cond_1
    const-string v0, "ENCODE_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v9

    .line 127
    :goto_1
    return v0

    .line 118
    :cond_3
    sget-object v0, Lcom/google/zxing/a;->l:Lcom/google/zxing/a;

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->e:Lcom/google/zxing/a;

    .line 1227
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_4
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 127
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v10

    goto :goto_1

    .line 1227
    :sswitch_0
    const-string v2, "TEXT_TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v9

    goto :goto_2

    :sswitch_1
    const-string v2, "EMAIL_TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v10

    goto :goto_2

    :sswitch_2
    const-string v2, "PHONE_TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_3
    const-string v2, "SMS_TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_4
    const-string v2, "CONTACT_TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x4

    goto :goto_2

    :sswitch_5
    const-string v2, "LOCATION_TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x5

    goto :goto_2

    .line 1229
    :pswitch_0
    const-string v0, "ENCODE_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1230
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1231
    iput-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->c:Ljava/lang/String;

    .line 1232
    iput-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->d:Ljava/lang/String;

    goto :goto_3

    .line 1237
    :pswitch_1
    const-string v0, "ENCODE_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/qrcode/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1238
    if-eqz v0, :cond_5

    .line 1239
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mailto:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nut/blehunter/qrcode/b/g;->c:Ljava/lang/String;

    .line 1240
    iput-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->d:Ljava/lang/String;

    goto :goto_3

    .line 1245
    :pswitch_2
    const-string v0, "ENCODE_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/qrcode/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1246
    if-eqz v0, :cond_5

    .line 1247
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nut/blehunter/qrcode/b/g;->c:Ljava/lang/String;

    .line 1248
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->d:Ljava/lang/String;

    goto/16 :goto_3

    .line 1253
    :pswitch_3
    const-string v0, "ENCODE_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/qrcode/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1254
    if-eqz v0, :cond_5

    .line 1255
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sms:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nut/blehunter/qrcode/b/g;->c:Ljava/lang/String;

    .line 1256
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->d:Ljava/lang/String;

    goto/16 :goto_3

    .line 1261
    :pswitch_4
    const-string v0, "ENCODE_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1262
    if-eqz v0, :cond_5

    .line 1264
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1265
    const-string v2, "company"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1266
    const-string v3, "postal"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1267
    sget-object v4, Lcom/nut/blehunter/qrcode/f;->a:[Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/nut/blehunter/qrcode/b/g;->a(Landroid/os/Bundle;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1268
    sget-object v5, Lcom/nut/blehunter/qrcode/f;->b:[Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/nut/blehunter/qrcode/b/g;->a(Landroid/os/Bundle;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1269
    sget-object v6, Lcom/nut/blehunter/qrcode/f;->c:[Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/nut/blehunter/qrcode/b/g;->a(Landroid/os/Bundle;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1270
    const-string v8, "URL_KEY"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1271
    if-nez v8, :cond_6

    .line 1272
    :goto_4
    const-string v8, "NOTE_KEY"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1274
    iget-boolean v0, p0, Lcom/nut/blehunter/qrcode/b/g;->g:Z

    if-eqz v0, :cond_7

    new-instance v0, Lcom/nut/blehunter/qrcode/b/h;

    invoke-direct {v0}, Lcom/nut/blehunter/qrcode/b/h;-><init>()V

    .line 1275
    :goto_5
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {v0 .. v8}, Lcom/nut/blehunter/qrcode/b/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1284
    aget-object v1, v0, v10

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1285
    aget-object v1, v0, v9

    iput-object v1, p0, Lcom/nut/blehunter/qrcode/b/g;->c:Ljava/lang/String;

    .line 1286
    aget-object v0, v0, v10

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->d:Ljava/lang/String;

    goto/16 :goto_3

    .line 1271
    :cond_6
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_4

    .line 1274
    :cond_7
    new-instance v0, Lcom/nut/blehunter/qrcode/b/c;

    invoke-direct {v0}, Lcom/nut/blehunter/qrcode/b/c;-><init>()V

    goto :goto_5

    .line 1293
    :pswitch_5
    const-string v0, "ENCODE_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1294
    if-eqz v0, :cond_5

    .line 1296
    const-string v1, "LAT"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 1297
    const-string v2, "LONG"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 1298
    cmpl-float v2, v1, v3

    if-eqz v2, :cond_5

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_5

    .line 1299
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "geo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nut/blehunter/qrcode/b/g;->c:Ljava/lang/String;

    .line 1300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->d:Ljava/lang/String;

    goto/16 :goto_3

    .line 121
    :cond_8
    const-string v0, "ENCODE_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 123
    iput-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->c:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->d:Ljava/lang/String;

    goto/16 :goto_3

    :cond_9
    move v0, v9

    .line 127
    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1227
    :sswitch_data_0
    .sparse-switch
        -0x4e09e475 -> :sswitch_2
        -0x27f26fe7 -> :sswitch_4
        0x2a45da80 -> :sswitch_3
        0x506b3984 -> :sswitch_5
        0x6a03370c -> :sswitch_0
        0x6d46ba1d -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private b(Landroid/content/Intent;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 177
    sget-object v0, Lcom/google/zxing/a;->l:Lcom/google/zxing/a;

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->e:Lcom/google/zxing/a;

    .line 178
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 179
    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "No extras"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 183
    if-nez v0, :cond_1

    .line 184
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "No EXTRA_STREAM"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/b/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v1

    .line 191
    if-nez v1, :cond_3

    .line 192
    :try_start_1
    new-instance v2, Lcom/google/zxing/WriterException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t open stream for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    :catch_0
    move-exception v0

    move-object v5, v1

    .line 203
    :goto_0
    :try_start_2
    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    :catchall_0
    move-exception v0

    move-object v1, v5

    :goto_1
    if-eqz v1, :cond_2

    .line 207
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 210
    :cond_2
    :goto_2
    throw v0

    .line 194
    :cond_3
    :try_start_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 195
    const/16 v2, 0x800

    new-array v2, v2, [B

    .line 197
    :goto_3
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_4

    .line 198
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 205
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 200
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 201
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    array-length v4, v0

    const-string v6, "UTF-8"

    invoke-direct {v2, v0, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 205
    if-eqz v1, :cond_5

    .line 207
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 213
    :cond_5
    :goto_4
    sget-object v1, Lcom/nut/blehunter/qrcode/b/g;->a:Ljava/lang/String;

    const-string v3, "Encoding share intent content:"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v1, Lcom/nut/blehunter/qrcode/b/g;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v1, Lcom/google/zxing/m;

    sget-object v3, Lcom/google/zxing/a;->l:Lcom/google/zxing/a;

    invoke-direct {v1, v2, v0, v5, v3}, Lcom/google/zxing/m;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/o;Lcom/google/zxing/a;)V

    .line 216
    invoke-static {v1}, Lcom/google/zxing/b/a/u;->c(Lcom/google/zxing/m;)Lcom/google/zxing/b/a/q;

    move-result-object v0

    .line 217
    instance-of v1, v0, Lcom/google/zxing/b/a/d;

    if-nez v1, :cond_6

    .line 218
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Result was not an address"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object v7, v0

    .line 220
    check-cast v7, Lcom/google/zxing/b/a/d;

    .line 1317
    iget-boolean v0, p0, Lcom/nut/blehunter/qrcode/b/g;->g:Z

    if-eqz v0, :cond_9

    new-instance v0, Lcom/nut/blehunter/qrcode/b/h;

    invoke-direct {v0}, Lcom/nut/blehunter/qrcode/b/h;-><init>()V

    .line 2102
    :goto_5
    iget-object v1, v7, Lcom/google/zxing/b/a/d;->a:[Ljava/lang/String;

    .line 1318
    invoke-static {v1}, Lcom/nut/blehunter/qrcode/b/g;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2168
    iget-object v2, v7, Lcom/google/zxing/b/a/d;->e:Ljava/lang/String;

    .line 3152
    iget-object v3, v7, Lcom/google/zxing/b/a/d;->d:[Ljava/lang/String;

    .line 1318
    invoke-static {v3}, Lcom/nut/blehunter/qrcode/b/g;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 4120
    iget-object v4, v7, Lcom/google/zxing/b/a/d;->b:[Ljava/lang/String;

    .line 1318
    invoke-static {v4}, Lcom/nut/blehunter/qrcode/b/g;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4132
    iget-object v6, v7, Lcom/google/zxing/b/a/d;->c:[Ljava/lang/String;

    .line 1318
    invoke-static {v6}, Lcom/nut/blehunter/qrcode/b/g;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 4172
    iget-object v7, v7, Lcom/google/zxing/b/a/d;->f:[Ljava/lang/String;

    .line 1318
    invoke-static {v7}, Lcom/nut/blehunter/qrcode/b/g;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Lcom/nut/blehunter/qrcode/b/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1327
    aget-object v1, v0, v10

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1328
    aget-object v1, v0, v9

    iput-object v1, p0, Lcom/nut/blehunter/qrcode/b/g;->c:Ljava/lang/String;

    .line 1329
    aget-object v0, v0, v10

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->d:Ljava/lang/String;

    .line 221
    :cond_7
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nut/blehunter/qrcode/b/g;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 222
    :cond_8
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "No content to encode"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1317
    :cond_9
    new-instance v0, Lcom/nut/blehunter/qrcode/b/c;

    invoke-direct {v0}, Lcom/nut/blehunter/qrcode/b/c;-><init>()V

    goto :goto_5

    .line 210
    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto/16 :goto_2

    .line 224
    :cond_a
    return-void

    .line 205
    :catchall_2
    move-exception v0

    move-object v1, v5

    goto/16 :goto_1

    .line 202
    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 338
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/b/g;->c:Ljava/lang/String;

    .line 339
    if-nez v1, :cond_0

    move-object v0, v7

    .line 367
    :goto_0
    return-object v0

    :cond_0
    move v0, v6

    .line 4372
    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 4373
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_1

    .line 4374
    const-string v0, "UTF-8"

    .line 344
    :goto_2
    if-eqz v0, :cond_6

    .line 345
    new-instance v5, Ljava/util/EnumMap;

    const-class v2, Lcom/google/zxing/f;

    invoke-direct {v5, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 346
    sget-object v2, Lcom/google/zxing/f;->b:Lcom/google/zxing/f;

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :goto_3
    :try_start_0
    new-instance v0, Lcom/google/zxing/i;

    invoke-direct {v0}, Lcom/google/zxing/i;-><init>()V

    iget-object v2, p0, Lcom/nut/blehunter/qrcode/b/g;->e:Lcom/google/zxing/a;

    iget v3, p0, Lcom/nut/blehunter/qrcode/b/g;->f:I

    iget v4, p0, Lcom/nut/blehunter/qrcode/b/g;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/i;->a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lcom/google/zxing/common/b;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 5371
    iget v3, v5, Lcom/google/zxing/common/b;->a:I

    .line 5378
    iget v7, v5, Lcom/google/zxing/common/b;->b:I

    .line 357
    mul-int v0, v3, v7

    new-array v1, v0, [I

    move v4, v6

    .line 358
    :goto_4
    if-ge v4, v7, :cond_5

    .line 359
    mul-int v8, v4, v3

    move v2, v6

    .line 360
    :goto_5
    if-ge v2, v3, :cond_4

    .line 361
    add-int v9, v8, v2

    invoke-virtual {v5, v2, v4}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, -0x1000000

    :goto_6
    aput v0, v1, v9

    .line 360
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 4372
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v7

    .line 4377
    goto :goto_2

    .line 353
    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_0

    .line 361
    :cond_3
    const/4 v0, -0x1

    goto :goto_6

    .line 358
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    .line 365
    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move v2, v6

    move v4, v6

    move v5, v6

    move v6, v3

    .line 366
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0

    :cond_6
    move-object v5, v7

    goto :goto_3
.end method
