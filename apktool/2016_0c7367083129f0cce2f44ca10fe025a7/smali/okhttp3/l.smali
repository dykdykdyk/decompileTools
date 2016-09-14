.class final Lokhttp3/l;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Lokio/ByteString;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 281
    instance-of v0, p1, Lokhttp3/l;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lokhttp3/l;->a:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lokhttp3/l;

    iget-object v0, v0, Lokhttp3/l;->a:Ljava/lang/String;

    .line 282
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lokhttp3/l;->c:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lokhttp3/l;

    iget-object v0, v0, Lokhttp3/l;->c:Ljava/lang/String;

    .line 283
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/l;->d:Lokio/ByteString;

    check-cast p1, Lokhttp3/l;

    iget-object v1, p1, Lokhttp3/l;->d:Lokio/ByteString;

    .line 284
    invoke-virtual {v0, v1}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 281
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lokhttp3/l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 290
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/l;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 291
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/l;->d:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 292
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/l;->d:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
