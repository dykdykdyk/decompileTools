.class final Lu/aly/bt;
.super Lu/aly/dy;
.source "ImprintValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dy",
        "<",
        "Lu/aly/bs;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Lu/aly/dy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Lu/aly/bt;-><init>()V

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
    .line 334
    check-cast p2, Lu/aly/bs;

    .line 1388
    invoke-virtual {p2}, Lu/aly/bs;->c()V

    .line 1390
    invoke-static {}, Lu/aly/bs;->d()Lu/aly/du;

    invoke-virtual {p1}, Lu/aly/dq;->a()V

    .line 1391
    iget-object v0, p2, Lu/aly/bs;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1392
    invoke-virtual {p2}, Lu/aly/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1393
    invoke-static {}, Lu/aly/bs;->e()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1394
    iget-object v0, p2, Lu/aly/bs;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Ljava/lang/String;)V

    .line 1398
    :cond_0
    invoke-static {}, Lu/aly/bs;->f()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1399
    iget-wide v0, p2, Lu/aly/bs;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dq;->a(J)V

    .line 1401
    iget-object v0, p2, Lu/aly/bs;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1402
    invoke-static {}, Lu/aly/bs;->g()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1403
    iget-object v0, p2, Lu/aly/bs;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Ljava/lang/String;)V

    .line 1406
    :cond_1
    invoke-virtual {p1}, Lu/aly/dq;->c()V

    .line 1407
    invoke-virtual {p1}, Lu/aly/dq;->b()V

    .line 334
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

    .line 334
    check-cast p2, Lu/aly/bs;

    .line 2339
    invoke-virtual {p1}, Lu/aly/dq;->d()Lu/aly/du;

    .line 2341
    :goto_0
    invoke-virtual {p1}, Lu/aly/dq;->f()Lu/aly/dn;

    move-result-object v0

    .line 2342
    iget-byte v1, v0, Lu/aly/dn;->b:B

    if-eqz v1, :cond_3

    .line 2345
    iget-short v1, v0, Lu/aly/dn;->c:S

    packed-switch v1, :pswitch_data_0

    .line 2371
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2347
    :pswitch_0
    iget-byte v1, v0, Lu/aly/dn;->b:B

    if-ne v1, v3, :cond_0

    .line 2348
    invoke-virtual {p1}, Lu/aly/dq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bs;->a:Ljava/lang/String;

    goto :goto_0

    .line 2351
    :cond_0
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2355
    :pswitch_1
    iget-byte v1, v0, Lu/aly/dn;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 2356
    invoke-virtual {p1}, Lu/aly/dq;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bs;->b:J

    .line 2357
    invoke-virtual {p2}, Lu/aly/bs;->b()V

    goto :goto_0

    .line 2359
    :cond_1
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2363
    :pswitch_2
    iget-byte v1, v0, Lu/aly/dn;->b:B

    if-ne v1, v3, :cond_2

    .line 2364
    invoke-virtual {p1}, Lu/aly/dq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bs;->c:Ljava/lang/String;

    goto :goto_0

    .line 2367
    :cond_2
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2375
    :cond_3
    invoke-virtual {p1}, Lu/aly/dq;->e()V

    .line 4218
    iget-byte v0, p2, Lu/aly/bs;->d:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/cu;->a(BI)Z

    move-result v0

    .line 2379
    if-nez v0, :cond_4

    .line 2380
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2381
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2383
    :cond_4
    invoke-virtual {p2}, Lu/aly/bs;->c()V

    .line 334
    return-void

    .line 2345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
