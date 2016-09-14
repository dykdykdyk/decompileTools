.class public final Lcom/tencent/connect/c/a;
.super Lcom/tencent/connect/common/b;
.source "ProGuard"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/b/v;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/connect/common/b;-><init>(Lcom/tencent/connect/b/v;B)V

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/connect/c/a;->a:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/c/a;)Lcom/tencent/connect/b/v;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/connect/c/a;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/b;)V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/connect/c/a;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/b;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/connect/c/a;)Lcom/tencent/connect/b/v;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/b;)V
    .locals 18

    .prologue
    .line 330
    const-string v2, "openSDK_LOG.QQShare"

    const-string v3, "doShareToQQ() -- start"

    invoke-static {v2, v3}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v2, "mqqapi://share/to_fri?src_type=app&version=1&file_type=news"

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 333
    const-string v2, "imageUrl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 334
    const-string v2, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 335
    const-string v2, "summary"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 336
    const-string v2, "targetUrl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 337
    const-string v2, "audio_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 338
    const-string v2, "req_type"

    const/4 v9, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 341
    const-string v2, "cflag"

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 342
    const-string v2, "share_qq_ext_str"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 344
    invoke-static/range {p1 .. p1}, Lcom/tencent/open/utils/s;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 345
    if-nez v2, :cond_0

    .line 347
    const-string v2, "appName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    :cond_0
    const-string v12, "imageLocalUrl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    .line 1023
    iget-object v13, v13, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 352
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    .line 1045
    iget-object v14, v14, Lcom/tencent/connect/b/v;->c:Ljava/lang/String;

    .line 354
    const-string v15, "openSDK_LOG.QQShare"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "doShareToQQ -- openid: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/tencent/open/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 357
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "&image_url="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/tencent/open/utils/s;->h(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    :cond_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 360
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v15, "&file_data="

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/tencent/open/utils/s;->h(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v15, 0x2

    invoke-static {v12, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "&title="

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/tencent/open/utils/s;->h(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v12, 0x2

    invoke-static {v5, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&description="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/tencent/open/utils/s;->h(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    :cond_4
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&share_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/tencent/open/utils/s;->h(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 376
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_7

    .line 377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&app_name="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tencent/open/utils/s;->h(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    :cond_8
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "&open_id="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/tencent/open/utils/s;->h(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    :cond_9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "&audioUrl="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/tencent/open/utils/s;->h(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "&req_type="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/open/utils/s;->h(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "&share_qq_ext_str="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/tencent/open/utils/s;->h(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "&cflag="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/open/utils/s;->h(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    const-string v2, "openSDK_LOG.QQShare"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doShareToQQ -- url: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/open/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    const-string v5, "requireApi"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "shareToNativeQQ"

    aput-object v8, v6, v7

    invoke-static {v2, v4, v5, v6}, Lcom/tencent/connect/a/a;->a(Landroid/content/Context;Lcom/tencent/connect/b/v;Ljava/lang/String;[Ljava/lang/String;)V

    .line 402
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 406
    const-string v3, "pkg_name"

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v3, "4.6.0"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/tencent/open/utils/o;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_d

    .line 408
    const-string v3, "openSDK_LOG.QQShare"

    const-string v4, "doShareToQQ, qqver below 4.6."

    invoke-static {v3, v4}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/tencent/open/utils/o;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    .line 409
    if-eqz v3, :cond_c

    .line 410
    invoke-static {}, Lcom/tencent/connect/common/c;->a()Lcom/tencent/connect/common/c;

    move-result-object v3

    const/16 v4, 0x2b5f

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0}, Lcom/tencent/connect/common/c;->a(ILcom/tencent/tauth/b;)Ljava/lang/Object;

    .line 412
    const/16 v3, 0x2b5f

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/tencent/connect/c/a;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 3197
    :cond_c
    :goto_0
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/tencent/open/utils/o;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    .line 426
    if-eqz v2, :cond_f

    .line 427
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    .line 4045
    iget-object v2, v2, Lcom/tencent/connect/b/v;->c:Ljava/lang/String;

    .line 427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    .line 5023
    iget-object v3, v3, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 427
    const-string v4, "ANDROIDQQ.SHARETOQQ.XX"

    const-string v5, "10"

    const-string v6, "3"

    const-string v7, "0"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/connect/c/a;->a:Ljava/lang/String;

    const-string v9, "0"

    const-string v10, "1"

    const-string v11, "0"

    invoke-static/range {v2 .. v11}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    const/4 v2, 0x0

    const-string v3, "SHARE_CHECK_SDK"

    const-string v4, "1000"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    .line 6023
    iget-object v5, v5, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 430
    const-string v6, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, ""

    invoke-static/range {v2 .. v8}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 440
    :goto_1
    const-string v2, "openSDK_LOG.QQShare"

    const-string v3, "doShareToQQ() --end"

    invoke-static {v2, v3}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void

    .line 415
    :cond_d
    const-string v3, "openSDK_LOG.QQShare"

    const-string v4, "doShareToQQ, qqver greater than 4.6."

    invoke-static {v3, v4}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-static {}, Lcom/tencent/connect/common/c;->a()Lcom/tencent/connect/common/c;

    move-result-object v3

    const-string v4, "shareToQQ"

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0}, Lcom/tencent/connect/common/c;->a(Ljava/lang/String;Lcom/tencent/tauth/b;)Ljava/lang/Object;

    move-result-object v3

    .line 417
    if-eqz v3, :cond_e

    .line 419
    const-string v3, "openSDK_LOG.QQShare"

    const-string v4, "doShareToQQ, last listener is not null, cancel it."

    invoke-static {v3, v4}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    :cond_e
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/tencent/open/utils/o;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    .line 421
    if-eqz v3, :cond_c

    .line 3160
    new-instance v3, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/tencent/connect/common/AssistActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3162
    const-string v4, "is_qq_mobile_share"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3164
    const-string v4, "openSDK_LOG.AssistActivity.ExtraIntent"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3165
    const/16 v4, 0x2777

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 433
    :cond_f
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    .line 6045
    iget-object v2, v2, Lcom/tencent/connect/b/v;->c:Ljava/lang/String;

    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    .line 7023
    iget-object v3, v3, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 433
    const-string v4, "ANDROIDQQ.SHARETOQQ.XX"

    const-string v5, "10"

    const-string v6, "3"

    const-string v7, "1"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/connect/c/a;->a:Ljava/lang/String;

    const-string v9, "0"

    const-string v10, "1"

    const-string v11, "0"

    invoke-static/range {v2 .. v11}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    const/4 v2, 0x1

    const-string v3, "SHARE_CHECK_SDK"

    const-string v4, "1000"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    .line 8023
    iget-object v5, v5, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 436
    const-string v6, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "hasActivityForIntent fail"

    invoke-static/range {v2 .. v8}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
