.class final enum Lorg/threeten/bp/temporal/h;
.super Lorg/threeten/bp/temporal/e;
.source "IsoFields.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 339
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/threeten/bp/temporal/e;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/threeten/bp/temporal/ab;
    .locals 4

    .prologue
    .line 360
    const-wide/16 v0, 0x34

    const-wide/16 v2, 0x35

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ab;->b(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/k;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/h;->a()Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p0}, Lorg/threeten/bp/temporal/ab;->a(JLorg/threeten/bp/temporal/q;)J

    .line 384
    invoke-virtual {p0, p1}, Lorg/threeten/bp/temporal/h;->c(Lorg/threeten/bp/temporal/l;)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v0

    sget-object v2, Lorg/threeten/bp/temporal/b;->i:Lorg/threeten/bp/temporal/b;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/k;->b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Map;Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/temporal/l;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/threeten/bp/temporal/q;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/threeten/bp/format/ac;",
            ")",
            "Lorg/threeten/bp/temporal/l;"
        }
    .end annotation

    .prologue
    .line 389
    sget-object v0, Lorg/threeten/bp/temporal/h;->d:Lorg/threeten/bp/temporal/e;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 390
    sget-object v1, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 391
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 392
    :cond_0
    const/4 v0, 0x0

    .line 422
    :goto_0
    return-object v0

    .line 394
    :cond_1
    sget-object v2, Lorg/threeten/bp/temporal/h;->d:Lorg/threeten/bp/temporal/e;

    invoke-virtual {v2}, Lorg/threeten/bp/temporal/e;->a()Lorg/threeten/bp/temporal/ab;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v0, Lorg/threeten/bp/temporal/h;->d:Lorg/threeten/bp/temporal/e;

    invoke-virtual {v2, v4, v5, v0}, Lorg/threeten/bp/temporal/ab;->b(JLorg/threeten/bp/temporal/q;)I

    move-result v4

    .line 395
    sget-object v0, Lorg/threeten/bp/temporal/h;->c:Lorg/threeten/bp/temporal/e;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 397
    sget-object v0, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    if-ne p2, v0, :cond_4

    .line 398
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 399
    const-wide/16 v0, 0x0

    .line 400
    const-wide/16 v8, 0x7

    cmp-long v5, v2, v8

    if-lez v5, :cond_3

    .line 401
    const-wide/16 v0, 0x1

    sub-long v0, v2, v0

    const-wide/16 v8, 0x7

    div-long/2addr v0, v8

    .line 402
    const-wide/16 v8, 0x1

    sub-long/2addr v2, v8

    const-wide/16 v8, 0x7

    rem-long/2addr v2, v8

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    .line 407
    :cond_2
    :goto_1
    const/4 v5, 0x1

    const/4 v8, 0x4

    invoke-static {v4, v5, v8}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v4

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Lorg/threeten/bp/j;->d(J)Lorg/threeten/bp/j;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lorg/threeten/bp/j;->d(J)Lorg/threeten/bp/j;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/j;

    move-result-object v0

    .line 419
    :goto_2
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v1, Lorg/threeten/bp/temporal/h;->d:Lorg/threeten/bp/temporal/e;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v1, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 403
    :cond_3
    const-wide/16 v8, 0x1

    cmp-long v5, v2, v8

    if-gez v5, :cond_2

    .line 404
    const-wide/16 v0, 0x7

    div-long v0, v2, v0

    const-wide/16 v8, 0x1

    sub-long/2addr v0, v8

    .line 405
    const-wide/16 v8, 0x7

    rem-long/2addr v2, v8

    const-wide/16 v8, 0x7

    add-long/2addr v2, v8

    goto :goto_1

    .line 409
    :cond_4
    sget-object v0, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v0

    .line 410
    sget-object v1, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    if-ne p2, v1, :cond_5

    .line 411
    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {v4, v1, v2}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v1

    .line 2205
    invoke-static {v1}, Lorg/threeten/bp/temporal/e;->a(Lorg/threeten/bp/j;)Lorg/threeten/bp/temporal/ab;

    move-result-object v1

    .line 413
    invoke-virtual {v1, v6, v7, p0}, Lorg/threeten/bp/temporal/ab;->a(JLorg/threeten/bp/temporal/q;)J

    .line 417
    :goto_3
    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {v4, v1, v2}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v1

    const-wide/16 v2, 0x1

    sub-long v2, v6, v2

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/j;->d(J)Lorg/threeten/bp/j;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/j;

    move-result-object v0

    goto :goto_2

    .line 415
    :cond_5
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/h;->a()Lorg/threeten/bp/temporal/ab;

    move-result-object v1

    invoke-virtual {v1, v6, v7, p0}, Lorg/threeten/bp/temporal/ab;->a(JLorg/threeten/bp/temporal/q;)J

    goto :goto_3
.end method

.method public final a(Lorg/threeten/bp/temporal/l;)Z
    .locals 1

    .prologue
    .line 364
    sget-object v0, Lorg/threeten/bp/temporal/a;->u:Lorg/threeten/bp/temporal/a;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/threeten/bp/temporal/e;->d(Lorg/threeten/bp/temporal/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/temporal/ab;
    .locals 2

    .prologue
    .line 368
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekOfWeekBasedYear"

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    invoke-static {p1}, Lorg/threeten/bp/j;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/j;

    move-result-object v0

    .line 1205
    invoke-static {v0}, Lorg/threeten/bp/temporal/e;->a(Lorg/threeten/bp/j;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    .line 371
    return-object v0
.end method

.method public final c(Lorg/threeten/bp/temporal/l;)J
    .locals 2

    .prologue
    .line 375
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekOfWeekBasedYear"

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    invoke-static {p1}, Lorg/threeten/bp/j;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/j;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/temporal/e;->c(Lorg/threeten/bp/j;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    const-string v0, "WeekOfWeekBasedYear"

    return-object v0
.end method
