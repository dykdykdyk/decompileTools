.class final enum Lorg/threeten/bp/temporal/g;
.super Lorg/threeten/bp/temporal/e;
.source "IsoFields.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 298
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/threeten/bp/temporal/e;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/threeten/bp/temporal/ab;
    .locals 4

    .prologue
    .line 313
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/k;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lorg/threeten/bp/temporal/g;->c(Lorg/threeten/bp/temporal/l;)J

    move-result-wide v0

    .line 2313
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x4

    invoke-static {v2, v3, v4, v5}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v2

    .line 335
    invoke-virtual {v2, p2, p3, p0}, Lorg/threeten/bp/temporal/ab;->a(JLorg/threeten/bp/temporal/q;)J

    .line 336
    sget-object v2, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    sget-object v3, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    invoke-interface {p1, v3}, Lorg/threeten/bp/temporal/k;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v4

    sub-long v0, p2, v0

    const-wide/16 v6, 0x3

    mul-long/2addr v0, v6

    add-long/2addr v0, v4

    invoke-interface {p1, v2, v0, v1}, Lorg/threeten/bp/temporal/k;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/threeten/bp/temporal/l;)Z
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

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
    .locals 4

    .prologue
    .line 1313
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    .line 321
    return-object v0
.end method

.method public final c(Lorg/threeten/bp/temporal/l;)J
    .locals 4

    .prologue
    .line 325
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: QuarterOfYear"

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/l;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    .line 329
    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    const-string v0, "QuarterOfYear"

    return-object v0
.end method
