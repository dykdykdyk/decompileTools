.class public final Lorg/threeten/bp/zone/j;
.super Lorg/threeten/bp/zone/i;
.source "ZoneRules.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final a:Lorg/threeten/bp/af;


# direct methods
.method public constructor <init>(Lorg/threeten/bp/af;)V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0}, Lorg/threeten/bp/zone/i;-><init>()V

    .line 414
    iput-object p1, p0, Lorg/threeten/bp/zone/j;->a:Lorg/threeten/bp/af;

    .line 415
    return-void
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/m;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/m;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/af;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lorg/threeten/bp/zone/j;->a:Lorg/threeten/bp/af;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/threeten/bp/g;)Lorg/threeten/bp/af;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lorg/threeten/bp/zone/j;->a:Lorg/threeten/bp/af;

    return-object v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lorg/threeten/bp/m;Lorg/threeten/bp/af;)Z
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lorg/threeten/bp/zone/j;->a:Lorg/threeten/bp/af;

    invoke-virtual {v0, p2}, Lorg/threeten/bp/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Lorg/threeten/bp/m;)Lorg/threeten/bp/zone/e;
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 488
    if-ne p0, p1, :cond_1

    .line 498
    :cond_0
    :goto_0
    return v0

    .line 491
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/zone/j;

    if-eqz v2, :cond_2

    .line 492
    iget-object v0, p0, Lorg/threeten/bp/zone/j;->a:Lorg/threeten/bp/af;

    check-cast p1, Lorg/threeten/bp/zone/j;

    iget-object v1, p1, Lorg/threeten/bp/zone/j;->a:Lorg/threeten/bp/af;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 494
    :cond_2
    instance-of v2, p1, Lorg/threeten/bp/zone/b;

    if-eqz v2, :cond_4

    .line 495
    check-cast p1, Lorg/threeten/bp/zone/b;

    .line 496
    invoke-virtual {p1}, Lorg/threeten/bp/zone/b;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/threeten/bp/zone/j;->a:Lorg/threeten/bp/af;

    sget-object v3, Lorg/threeten/bp/g;->a:Lorg/threeten/bp/g;

    invoke-virtual {p1, v3}, Lorg/threeten/bp/zone/b;->a(Lorg/threeten/bp/g;)Lorg/threeten/bp/af;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/threeten/bp/af;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 498
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lorg/threeten/bp/zone/j;->a:Lorg/threeten/bp/af;

    invoke-virtual {v0}, Lorg/threeten/bp/af;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    xor-int/lit8 v0, v0, 0x1

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/threeten/bp/zone/j;->a:Lorg/threeten/bp/af;

    invoke-virtual {v1}, Lorg/threeten/bp/af;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    xor-int/2addr v0, v1

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FixedRules:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/threeten/bp/zone/j;->a:Lorg/threeten/bp/af;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
