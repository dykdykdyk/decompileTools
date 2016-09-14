.class final enum Lorg/threeten/bp/temporal/i;
.super Lorg/threeten/bp/temporal/e;
.source "IsoFields.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 425
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/threeten/bp/temporal/e;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/threeten/bp/temporal/ab;
    .locals 1

    .prologue
    .line 440
    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    .line 1519
    iget-object v0, v0, Lorg/threeten/bp/temporal/a;->E:Lorg/threeten/bp/temporal/ab;

    .line 440
    return-object v0
.end method

.method public final a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/k;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    const/16 v0, 0x34

    .line 460
    invoke-virtual {p0, p1}, Lorg/threeten/bp/temporal/i;->a(Lorg/threeten/bp/temporal/l;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekBasedYear"

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3440
    :cond_0
    sget-object v1, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    .line 3519
    iget-object v1, v1, Lorg/threeten/bp/temporal/a;->E:Lorg/threeten/bp/temporal/ab;

    .line 463
    sget-object v2, Lorg/threeten/bp/temporal/i;->d:Lorg/threeten/bp/temporal/e;

    invoke-virtual {v1, p2, p3, v2}, Lorg/threeten/bp/temporal/ab;->b(JLorg/threeten/bp/temporal/q;)I

    move-result v2

    .line 464
    invoke-static {p1}, Lorg/threeten/bp/j;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/j;

    move-result-object v1

    .line 465
    sget-object v3, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v1, v3}, Lorg/threeten/bp/j;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v3

    .line 466
    invoke-static {v1}, Lorg/threeten/bp/temporal/e;->c(Lorg/threeten/bp/j;)I

    move-result v1

    .line 467
    const/16 v4, 0x35

    if-ne v1, v4, :cond_1

    .line 4205
    invoke-static {v2}, Lorg/threeten/bp/temporal/e;->a(I)I

    move-result v4

    .line 467
    if-ne v4, v0, :cond_1

    .line 470
    :goto_0
    const/4 v1, 0x1

    const/4 v4, 0x4

    invoke-static {v2, v1, v4}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v1

    .line 471
    sget-object v2, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v1, v2}, Lorg/threeten/bp/j;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v2

    sub-int v2, v3, v2

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v2

    .line 472
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v0

    .line 473
    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/k;->a(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/temporal/l;)Z
    .locals 1

    .prologue
    .line 444
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
    .locals 1

    .prologue
    .line 448
    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    .line 2519
    iget-object v0, v0, Lorg/threeten/bp/temporal/a;->E:Lorg/threeten/bp/temporal/ab;

    .line 448
    return-object v0
.end method

.method public final c(Lorg/threeten/bp/temporal/l;)J
    .locals 2

    .prologue
    .line 452
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekBasedYear"

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_0
    invoke-static {p1}, Lorg/threeten/bp/j;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/j;

    move-result-object v0

    .line 3205
    invoke-static {v0}, Lorg/threeten/bp/temporal/e;->b(Lorg/threeten/bp/j;)I

    move-result v0

    .line 455
    int-to-long v0, v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    const-string v0, "WeekBasedYear"

    return-object v0
.end method
