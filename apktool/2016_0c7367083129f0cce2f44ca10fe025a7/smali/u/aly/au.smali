.class final Lu/aly/au;
.super Lu/aly/dy;
.source "IdJournal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dy",
        "<",
        "Lu/aly/at;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Lu/aly/dy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Lu/aly/au;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/dq;Lu/aly/cw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 390
    check-cast p2, Lu/aly/at;

    .line 1452
    invoke-virtual {p2}, Lu/aly/at;->c()V

    .line 1454
    invoke-static {}, Lu/aly/at;->d()Lu/aly/du;

    invoke-virtual {p1}, Lu/aly/dq;->a()V

    .line 1455
    iget-object v0, p2, Lu/aly/at;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1456
    invoke-static {}, Lu/aly/at;->e()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1457
    iget-object v0, p2, Lu/aly/at;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Ljava/lang/String;)V

    .line 1460
    :cond_0
    iget-object v0, p2, Lu/aly/at;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1461
    invoke-virtual {p2}, Lu/aly/at;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1462
    invoke-static {}, Lu/aly/at;->f()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1463
    iget-object v0, p2, Lu/aly/at;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Ljava/lang/String;)V

    .line 1467
    :cond_1
    iget-object v0, p2, Lu/aly/at;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1468
    invoke-static {}, Lu/aly/at;->g()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1469
    iget-object v0, p2, Lu/aly/at;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Ljava/lang/String;)V

    .line 1472
    :cond_2
    invoke-static {}, Lu/aly/at;->h()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1473
    iget-wide v0, p2, Lu/aly/at;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dq;->a(J)V

    .line 1475
    invoke-virtual {p1}, Lu/aly/dq;->c()V

    .line 1476
    invoke-virtual {p1}, Lu/aly/dq;->b()V

    .line 390
    return-void
.end method

.method public final synthetic b(Lu/aly/dq;Lu/aly/cw;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    const/16 v3, 0xb

    .line 390
    check-cast p2, Lu/aly/at;

    .line 2395
    invoke-virtual {p1}, Lu/aly/dq;->d()Lu/aly/du;

    .line 2397
    :goto_0
    invoke-virtual {p1}, Lu/aly/dq;->f()Lu/aly/dn;

    move-result-object v0

    .line 2398
    iget-byte v1, v0, Lu/aly/dn;->b:B

    if-eqz v1, :cond_4

    .line 2401
    iget-short v1, v0, Lu/aly/dn;->c:S

    packed-switch v1, :pswitch_data_0

    .line 2435
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2403
    :pswitch_0
    iget-byte v1, v0, Lu/aly/dn;->b:B

    if-ne v1, v3, :cond_0

    .line 2404
    invoke-virtual {p1}, Lu/aly/dq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->a:Ljava/lang/String;

    goto :goto_0

    .line 2407
    :cond_0
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2411
    :pswitch_1
    iget-byte v1, v0, Lu/aly/dn;->b:B

    if-ne v1, v3, :cond_1

    .line 2412
    invoke-virtual {p1}, Lu/aly/dq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->b:Ljava/lang/String;

    goto :goto_0

    .line 2415
    :cond_1
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2419
    :pswitch_2
    iget-byte v1, v0, Lu/aly/dn;->b:B

    if-ne v1, v3, :cond_2

    .line 2420
    invoke-virtual {p1}, Lu/aly/dq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->c:Ljava/lang/String;

    goto :goto_0

    .line 2423
    :cond_2
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2427
    :pswitch_3
    iget-byte v1, v0, Lu/aly/dn;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 2428
    invoke-virtual {p1}, Lu/aly/dq;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/at;->d:J

    .line 2429
    invoke-virtual {p2}, Lu/aly/at;->b()V

    goto :goto_0

    .line 2431
    :cond_3
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2439
    :cond_4
    invoke-virtual {p1}, Lu/aly/dq;->e()V

    .line 3288
    iget-byte v0, p2, Lu/aly/at;->e:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/cu;->a(BI)Z

    move-result v0

    .line 2443
    if-nez v0, :cond_5

    .line 2444
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2445
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2447
    :cond_5
    invoke-virtual {p2}, Lu/aly/at;->c()V

    .line 390
    return-void

    .line 2401
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
