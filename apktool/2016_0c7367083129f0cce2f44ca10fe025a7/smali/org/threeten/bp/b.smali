.class final Lorg/threeten/bp/b;
.super Lorg/threeten/bp/a;
.source "Clock.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lorg/threeten/bp/ad;


# direct methods
.method constructor <init>(Lorg/threeten/bp/ad;)V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Lorg/threeten/bp/a;-><init>()V

    .line 404
    iput-object p1, p0, Lorg/threeten/bp/b;->a:Lorg/threeten/bp/ad;

    .line 405
    return-void
.end method


# virtual methods
.method public final a()Lorg/threeten/bp/ad;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/threeten/bp/b;->a:Lorg/threeten/bp/ad;

    return-object v0
.end method

.method public final b()Lorg/threeten/bp/g;
    .locals 2

    .prologue
    .line 1419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 423
    invoke-static {v0, v1}, Lorg/threeten/bp/g;->b(J)Lorg/threeten/bp/g;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 427
    instance-of v0, p1, Lorg/threeten/bp/b;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lorg/threeten/bp/b;->a:Lorg/threeten/bp/ad;

    check-cast p1, Lorg/threeten/bp/b;

    iget-object v1, p1, Lorg/threeten/bp/b;->a:Lorg/threeten/bp/ad;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/ad;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 430
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lorg/threeten/bp/b;->a:Lorg/threeten/bp/ad;

    invoke-virtual {v0}, Lorg/threeten/bp/ad;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SystemClock["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/threeten/bp/b;->a:Lorg/threeten/bp/ad;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
