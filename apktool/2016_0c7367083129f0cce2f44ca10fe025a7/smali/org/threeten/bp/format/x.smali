.class final Lorg/threeten/bp/format/x;
.super Lorg/threeten/bp/b/b;
.source "DateTimeParseContext.java"


# instance fields
.field a:Lorg/threeten/bp/a/m;

.field b:Lorg/threeten/bp/ad;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/threeten/bp/temporal/q;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:Lorg/threeten/bp/z;

.field final synthetic f:Lorg/threeten/bp/format/w;


# direct methods
.method constructor <init>(Lorg/threeten/bp/format/w;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 433
    iput-object p1, p0, Lorg/threeten/bp/format/x;->f:Lorg/threeten/bp/format/w;

    invoke-direct {p0}, Lorg/threeten/bp/b/b;-><init>()V

    .line 426
    iput-object v0, p0, Lorg/threeten/bp/format/x;->a:Lorg/threeten/bp/a/m;

    .line 427
    iput-object v0, p0, Lorg/threeten/bp/format/x;->b:Lorg/threeten/bp/ad;

    .line 428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/x;->c:Ljava/util/Map;

    .line 430
    sget-object v0, Lorg/threeten/bp/z;->a:Lorg/threeten/bp/z;

    iput-object v0, p0, Lorg/threeten/bp/format/x;->e:Lorg/threeten/bp/z;

    .line 434
    return-void
.end method

.method synthetic constructor <init>(Lorg/threeten/bp/format/w;B)V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/x;-><init>(Lorg/threeten/bp/format/w;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/z",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 469
    invoke-static {}, Lorg/threeten/bp/temporal/r;->b()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 470
    iget-object v0, p0, Lorg/threeten/bp/format/x;->a:Lorg/threeten/bp/a/m;

    .line 475
    :goto_0
    return-object v0

    .line 472
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/r;->a()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/r;->d()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 473
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/format/x;->b:Lorg/threeten/bp/ad;

    goto :goto_0

    .line 475
    :cond_2
    invoke-super {p0, p1}, Lorg/threeten/bp/b/b;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/temporal/q;)Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lorg/threeten/bp/format/x;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c(Lorg/threeten/bp/temporal/q;)I
    .locals 3

    .prologue
    .line 453
    iget-object v0, p0, Lorg/threeten/bp/format/x;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/x;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 457
    invoke-static {v0, v1}, Lorg/threeten/bp/b/c;->a(J)I

    move-result v0

    return v0
.end method

.method public final d(Lorg/threeten/bp/temporal/q;)J
    .locals 3

    .prologue
    .line 461
    iget-object v0, p0, Lorg/threeten/bp/format/x;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/x;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/threeten/bp/format/x;->c:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/format/x;->a:Lorg/threeten/bp/a/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/format/x;->b:Lorg/threeten/bp/ad;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
