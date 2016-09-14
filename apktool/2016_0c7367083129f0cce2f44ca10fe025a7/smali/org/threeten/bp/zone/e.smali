.class public final Lorg/threeten/bp/zone/e;
.super Ljava/lang/Object;
.source "ZoneOffsetTransition.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/zone/e;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lorg/threeten/bp/m;

.field final b:Lorg/threeten/bp/af;

.field public final c:Lorg/threeten/bp/af;


# direct methods
.method constructor <init>(JLorg/threeten/bp/af;Lorg/threeten/bp/af;)V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lorg/threeten/bp/m;->a(JILorg/threeten/bp/af;)Lorg/threeten/bp/m;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/zone/e;->a:Lorg/threeten/bp/m;

    .line 136
    iput-object p3, p0, Lorg/threeten/bp/zone/e;->b:Lorg/threeten/bp/af;

    .line 137
    iput-object p4, p0, Lorg/threeten/bp/zone/e;->c:Lorg/threeten/bp/af;

    .line 138
    return-void
.end method

.method constructor <init>(Lorg/threeten/bp/m;Lorg/threeten/bp/af;Lorg/threeten/bp/af;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/threeten/bp/zone/e;->a:Lorg/threeten/bp/m;

    .line 123
    iput-object p2, p0, Lorg/threeten/bp/zone/e;->b:Lorg/threeten/bp/af;

    .line 124
    iput-object p3, p0, Lorg/threeten/bp/zone/e;->c:Lorg/threeten/bp/af;

    .line 125
    return-void
.end method

.method static a(Ljava/io/DataInput;)Lorg/threeten/bp/zone/e;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {p0}, Lorg/threeten/bp/zone/a;->c(Ljava/io/DataInput;)J

    move-result-wide v0

    .line 171
    invoke-static {p0}, Lorg/threeten/bp/zone/a;->b(Ljava/io/DataInput;)Lorg/threeten/bp/af;

    move-result-object v2

    .line 172
    invoke-static {p0}, Lorg/threeten/bp/zone/a;->b(Ljava/io/DataInput;)Lorg/threeten/bp/af;

    move-result-object v3

    .line 173
    invoke-virtual {v2, v3}, Lorg/threeten/bp/af;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offsets must not be equal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    new-instance v4, Lorg/threeten/bp/zone/e;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/threeten/bp/zone/e;-><init>(JLorg/threeten/bp/af;Lorg/threeten/bp/af;)V

    return-object v4
.end method

.method private e()Lorg/threeten/bp/g;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lorg/threeten/bp/zone/e;->a:Lorg/threeten/bp/m;

    iget-object v1, p0, Lorg/threeten/bp/zone/e;->b:Lorg/threeten/bp/af;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/af;)Lorg/threeten/bp/g;

    move-result-object v0

    return-object v0
.end method

.method private f()I
    .locals 2

    .prologue
    .line 276
    .line 1254
    iget-object v0, p0, Lorg/threeten/bp/zone/e;->c:Lorg/threeten/bp/af;

    .line 1449
    iget v0, v0, Lorg/threeten/bp/af;->g:I

    .line 2243
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->b:Lorg/threeten/bp/af;

    .line 2449
    iget v1, v1, Lorg/threeten/bp/af;->g:I

    .line 276
    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lorg/threeten/bp/zone/e;->a:Lorg/threeten/bp/m;

    iget-object v1, p0, Lorg/threeten/bp/zone/e;->b:Lorg/threeten/bp/af;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/af;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Lorg/threeten/bp/m;
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lorg/threeten/bp/zone/e;->a:Lorg/threeten/bp/m;

    invoke-direct {p0}, Lorg/threeten/bp/zone/e;->f()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/m;->b(J)Lorg/threeten/bp/m;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lorg/threeten/bp/f;
    .locals 2

    .prologue
    .line 267
    invoke-direct {p0}, Lorg/threeten/bp/zone/e;->f()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/threeten/bp/f;->a(J)Lorg/threeten/bp/f;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 66
    check-cast p1, Lorg/threeten/bp/zone/e;

    .line 5345
    invoke-direct {p0}, Lorg/threeten/bp/zone/e;->e()Lorg/threeten/bp/g;

    move-result-object v0

    invoke-direct {p1}, Lorg/threeten/bp/zone/e;->e()Lorg/threeten/bp/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/g;->a(Lorg/threeten/bp/g;)I

    move-result v0

    .line 66
    return v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 289
    .line 3254
    iget-object v0, p0, Lorg/threeten/bp/zone/e;->c:Lorg/threeten/bp/af;

    .line 3449
    iget v0, v0, Lorg/threeten/bp/af;->g:I

    .line 4243
    iget-object v1, p0, Lorg/threeten/bp/zone/e;->b:Lorg/threeten/bp/af;

    .line 4449
    iget v1, v1, Lorg/threeten/bp/af;->g:I

    .line 289
    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 359
    if-ne p1, p0, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v0

    .line 362
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/zone/e;

    if-eqz v2, :cond_3

    .line 363
    check-cast p1, Lorg/threeten/bp/zone/e;

    .line 364
    iget-object v2, p0, Lorg/threeten/bp/zone/e;->a:Lorg/threeten/bp/m;

    iget-object v3, p1, Lorg/threeten/bp/zone/e;->a:Lorg/threeten/bp/m;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/threeten/bp/zone/e;->b:Lorg/threeten/bp/af;

    iget-object v3, p1, Lorg/threeten/bp/zone/e;->b:Lorg/threeten/bp/af;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/af;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/threeten/bp/zone/e;->c:Lorg/threeten/bp/af;

    iget-object v3, p1, Lorg/threeten/bp/zone/e;->c:Lorg/threeten/bp/af;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/af;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 367
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lorg/threeten/bp/zone/e;->a:Lorg/threeten/bp/m;

    invoke-virtual {v0}, Lorg/threeten/bp/m;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/zone/e;->b:Lorg/threeten/bp/af;

    invoke-virtual {v1}, Lorg/threeten/bp/af;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/threeten/bp/zone/e;->c:Lorg/threeten/bp/af;

    invoke-virtual {v1}, Lorg/threeten/bp/af;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    const-string v0, "Transition["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/threeten/bp/zone/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Gap"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/threeten/bp/zone/e;->a:Lorg/threeten/bp/m;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/threeten/bp/zone/e;->b:Lorg/threeten/bp/af;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/threeten/bp/zone/e;->c:Lorg/threeten/bp/af;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 389
    :cond_0
    const-string v0, "Overlap"

    goto :goto_0
.end method
