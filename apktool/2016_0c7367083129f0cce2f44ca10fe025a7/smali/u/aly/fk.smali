.class public final Lu/aly/fk;
.super Ljava/lang/Object;
.source "ImprintHandler.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput v0, p0, Lu/aly/fk;->h:I

    .line 265
    iput v0, p0, Lu/aly/fk;->a:I

    .line 266
    iput v0, p0, Lu/aly/fk;->b:I

    .line 267
    iput v0, p0, Lu/aly/fk;->i:I

    .line 268
    iput v0, p0, Lu/aly/fk;->j:I

    .line 269
    iput-object v1, p0, Lu/aly/fk;->k:Ljava/lang/String;

    .line 270
    iput v0, p0, Lu/aly/fk;->c:I

    .line 271
    iput-object v1, p0, Lu/aly/fk;->d:Ljava/lang/String;

    .line 272
    iput v0, p0, Lu/aly/fk;->e:I

    .line 273
    iput v0, p0, Lu/aly/fk;->f:I

    .line 274
    iput-object v1, p0, Lu/aly/fk;->g:Ljava/lang/String;

    .line 275
    iput-object v1, p0, Lu/aly/fk;->l:Ljava/lang/String;

    .line 276
    iput-object v1, p0, Lu/aly/fk;->m:Ljava/lang/String;

    .line 279
    return-void
.end method

.method private static a(Lu/aly/bl;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 474
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lu/aly/bl;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 489
    :goto_0
    return v0

    .line 1201
    :cond_1
    iget-object v0, p0, Lu/aly/bl;->a:Ljava/util/Map;

    .line 478
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bs;

    .line 480
    if-eqz v0, :cond_2

    .line 2173
    iget-object v2, v0, Lu/aly/bs;->a:Ljava/lang/String;

    .line 480
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 481
    goto :goto_0

    .line 3173
    :cond_3
    :try_start_0
    iget-object v0, v0, Lu/aly/bs;->a:Ljava/lang/String;

    .line 485
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private static b(Lu/aly/bl;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 493
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lu/aly/bl;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 503
    :goto_0
    return-object v0

    .line 3201
    :cond_1
    iget-object v0, p0, Lu/aly/bl;->a:Ljava/util/Map;

    .line 497
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bs;

    .line 499
    if-eqz v0, :cond_2

    .line 4173
    iget-object v2, v0, Lu/aly/bs;->a:Ljava/lang/String;

    .line 499
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 500
    goto :goto_0

    .line 5173
    :cond_3
    iget-object v0, v0, Lu/aly/bs;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 351
    iget v1, p0, Lu/aly/fk;->h:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    iget v1, p0, Lu/aly/fk;->h:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    iget v1, p0, Lu/aly/fk;->h:I

    if-ltz v1, :cond_0

    .line 359
    iget v0, p0, Lu/aly/fk;->h:I

    goto :goto_0
.end method

.method public final a(I)I
    .locals 2

    .prologue
    .line 436
    iget v0, p0, Lu/aly/fk;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lu/aly/fk;->c:I

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_0

    iget v0, p0, Lu/aly/fk;->c:I

    const v1, 0x15180

    if-le v0, v1, :cond_1

    .line 440
    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Lu/aly/fk;->c:I

    mul-int/lit16 p1, v0, 0x3e8

    goto :goto_0
.end method

.method public final a(Lu/aly/bl;)V
    .locals 1

    .prologue
    .line 286
    if-nez p1, :cond_0

    .line 303
    :goto_0
    return-void

    .line 290
    :cond_0
    const-string v0, "defcon"

    invoke-static {p1, v0}, Lu/aly/fk;->a(Lu/aly/bl;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/fk;->h:I

    .line 291
    const-string v0, "latent"

    invoke-static {p1, v0}, Lu/aly/fk;->a(Lu/aly/bl;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/fk;->a:I

    .line 292
    const-string v0, "codex"

    invoke-static {p1, v0}, Lu/aly/fk;->a(Lu/aly/bl;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/fk;->b:I

    .line 293
    const-string v0, "report_policy"

    invoke-static {p1, v0}, Lu/aly/fk;->a(Lu/aly/bl;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/fk;->i:I

    .line 294
    const-string v0, "report_interval"

    invoke-static {p1, v0}, Lu/aly/fk;->a(Lu/aly/bl;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/fk;->j:I

    .line 295
    const-string v0, "client_test"

    invoke-static {p1, v0}, Lu/aly/fk;->b(Lu/aly/bl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/fk;->k:Ljava/lang/String;

    .line 296
    const-string v0, "test_report_interval"

    invoke-static {p1, v0}, Lu/aly/fk;->a(Lu/aly/bl;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/fk;->c:I

    .line 297
    const-string v0, "umid"

    invoke-static {p1, v0}, Lu/aly/fk;->b(Lu/aly/bl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/fk;->d:Ljava/lang/String;

    .line 298
    const-string v0, "integrated_test"

    invoke-static {p1, v0}, Lu/aly/fk;->a(Lu/aly/bl;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/fk;->e:I

    .line 299
    const-string v0, "latent_hours"

    invoke-static {p1, v0}, Lu/aly/fk;->a(Lu/aly/bl;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/fk;->f:I

    .line 300
    const-string v0, "country"

    invoke-static {p1, v0}, Lu/aly/fk;->b(Lu/aly/bl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/fk;->g:Ljava/lang/String;

    .line 301
    const-string v0, "domain_p"

    invoke-static {p1, v0}, Lu/aly/fk;->b(Lu/aly/bl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/fk;->l:Ljava/lang/String;

    .line 302
    const-string v0, "domain_s"

    invoke-static {p1, v0}, Lu/aly/fk;->b(Lu/aly/bl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/fk;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b()[I
    .locals 6

    .prologue
    const/16 v5, 0x5a

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 404
    iget v0, p0, Lu/aly/fk;->i:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lu/aly/fk;->i:I

    .line 1051
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 404
    :goto_0
    if-nez v0, :cond_1

    .line 405
    :cond_0
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 412
    :goto_1
    return-object v0

    :pswitch_1
    move v0, v1

    .line 1061
    goto :goto_0

    .line 408
    :cond_1
    iget v0, p0, Lu/aly/fk;->j:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lu/aly/fk;->j:I

    if-lt v0, v5, :cond_2

    iget v0, p0, Lu/aly/fk;->j:I

    const v3, 0x15180

    if-le v0, v3, :cond_3

    .line 409
    :cond_2
    iput v5, p0, Lu/aly/fk;->j:I

    .line 412
    :cond_3
    new-array v0, v4, [I

    iget v3, p0, Lu/aly/fk;->i:I

    aput v3, v0, v2

    iget v2, p0, Lu/aly/fk;->j:I

    mul-int/lit16 v2, v2, 0x3e8

    aput v2, v0, v1

    goto :goto_1

    .line 1051
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 405
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lu/aly/fk;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/fk;->k:Ljava/lang/String;

    invoke-static {v0}, Lu/aly/ap;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 423
    :cond_0
    const/4 v0, 0x0

    .line 426
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lu/aly/fk;->k:Ljava/lang/String;

    goto :goto_0
.end method
