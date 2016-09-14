.class final Lu/aly/bg;
.super Lu/aly/dy;
.source "IdTracking.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dy",
        "<",
        "Lu/aly/bf;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lu/aly/dy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lu/aly/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/dq;Lu/aly/cw;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    const/16 v3, 0xc

    .line 384
    check-cast p2, Lu/aly/bf;

    .line 1456
    invoke-virtual {p2}, Lu/aly/bf;->c()V

    .line 1458
    invoke-static {}, Lu/aly/bf;->d()Lu/aly/du;

    invoke-virtual {p1}, Lu/aly/dq;->a()V

    .line 1459
    iget-object v0, p2, Lu/aly/bf;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1460
    invoke-static {}, Lu/aly/bf;->e()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1462
    new-instance v0, Lu/aly/dp;

    const/16 v1, 0xb

    iget-object v2, p2, Lu/aly/bf;->a:Ljava/util/Map;

    .line 1463
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lu/aly/dp;-><init>(BBI)V

    .line 1462
    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dp;)V

    .line 1464
    iget-object v0, p2, Lu/aly/bf;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1465
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/dq;->a(Ljava/lang/String;)V

    .line 1466
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/az;

    invoke-virtual {v0, p1}, Lu/aly/az;->b(Lu/aly/dq;)V

    goto :goto_0

    .line 1472
    :cond_0
    iget-object v0, p2, Lu/aly/bf;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1473
    invoke-virtual {p2}, Lu/aly/bf;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1474
    invoke-static {}, Lu/aly/bf;->f()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1476
    new-instance v0, Lu/aly/do;

    iget-object v1, p2, Lu/aly/bf;->b:Ljava/util/List;

    .line 1477
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lu/aly/do;-><init>(BI)V

    .line 1476
    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/do;)V

    .line 1478
    iget-object v0, p2, Lu/aly/bf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/at;

    .line 1479
    invoke-virtual {v0, p1}, Lu/aly/at;->b(Lu/aly/dq;)V

    goto :goto_1

    .line 1486
    :cond_1
    iget-object v0, p2, Lu/aly/bf;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1487
    invoke-virtual {p2}, Lu/aly/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1488
    invoke-static {}, Lu/aly/bf;->g()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1489
    iget-object v0, p2, Lu/aly/bf;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Ljava/lang/String;)V

    .line 1493
    :cond_2
    invoke-virtual {p1}, Lu/aly/dq;->c()V

    .line 1494
    invoke-virtual {p1}, Lu/aly/dq;->b()V

    .line 384
    return-void
.end method

.method public final synthetic b(Lu/aly/dq;Lu/aly/cw;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 384
    check-cast p2, Lu/aly/bf;

    .line 2389
    invoke-virtual {p1}, Lu/aly/dq;->d()Lu/aly/du;

    .line 2391
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lu/aly/dq;->f()Lu/aly/dn;

    move-result-object v0

    .line 2392
    iget-byte v2, v0, Lu/aly/dn;->b:B

    if-eqz v2, :cond_5

    .line 2395
    iget-short v2, v0, Lu/aly/dn;->c:S

    packed-switch v2, :pswitch_data_0

    .line 2443
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2397
    :pswitch_0
    iget-byte v2, v0, Lu/aly/dn;->b:B

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 2399
    invoke-virtual {p1}, Lu/aly/dq;->g()Lu/aly/dp;

    move-result-object v2

    .line 2400
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lu/aly/dp;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/bf;->a:Ljava/util/Map;

    move v0, v1

    .line 2401
    :goto_1
    iget v3, v2, Lu/aly/dp;->c:I

    if-ge v0, v3, :cond_0

    .line 2404
    invoke-virtual {p1}, Lu/aly/dq;->p()Ljava/lang/String;

    move-result-object v3

    .line 2405
    new-instance v4, Lu/aly/az;

    invoke-direct {v4}, Lu/aly/az;-><init>()V

    .line 2406
    invoke-virtual {v4, p1}, Lu/aly/az;->a(Lu/aly/dq;)V

    .line 2407
    iget-object v5, p2, Lu/aly/bf;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2401
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2413
    :cond_1
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2417
    :pswitch_1
    iget-byte v2, v0, Lu/aly/dn;->b:B

    const/16 v3, 0xf

    if-ne v2, v3, :cond_3

    .line 2419
    invoke-virtual {p1}, Lu/aly/dq;->h()Lu/aly/do;

    move-result-object v2

    .line 2420
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/do;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bf;->b:Ljava/util/List;

    move v0, v1

    .line 2421
    :goto_2
    iget v3, v2, Lu/aly/do;->b:I

    if-ge v0, v3, :cond_2

    .line 2423
    new-instance v3, Lu/aly/at;

    invoke-direct {v3}, Lu/aly/at;-><init>()V

    .line 2424
    invoke-virtual {v3, p1}, Lu/aly/at;->a(Lu/aly/dq;)V

    .line 2425
    iget-object v4, p2, Lu/aly/bf;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2421
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2429
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lu/aly/bf;->a(Z)V

    goto :goto_0

    .line 2431
    :cond_3
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2435
    :pswitch_2
    iget-byte v2, v0, Lu/aly/dn;->b:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    .line 2436
    invoke-virtual {p1}, Lu/aly/dq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bf;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 2439
    :cond_4
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto/16 :goto_0

    .line 2447
    :cond_5
    invoke-virtual {p1}, Lu/aly/dq;->e()V

    .line 2451
    invoke-virtual {p2}, Lu/aly/bf;->c()V

    .line 384
    return-void

    .line 2395
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
