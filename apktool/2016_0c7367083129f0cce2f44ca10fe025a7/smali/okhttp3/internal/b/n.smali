.class public final Lokhttp3/internal/b/n;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# direct methods
.method public static a(Ljava/lang/String;I)I
    .locals 4

    .prologue
    .line 247
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 248
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 249
    const p1, 0x7fffffff

    .line 256
    :goto_0
    return p1

    .line 250
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 251
    const/4 p1, 0x0

    goto :goto_0

    .line 253
    :cond_1
    long-to-int p1, v0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    .prologue
    .line 219
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 220
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 219
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 224
    :cond_0
    return p1
.end method

.method private static a(Ljava/lang/String;)J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 50
    if-nez p0, :cond_0

    .line 54
    :goto_0
    return-wide v0

    .line 52
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static a(Lokhttp3/ab;)J
    .locals 2

    .prologue
    .line 46
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lokhttp3/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/b/n;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lokhttp3/t;Lokhttp3/ad;Lokhttp3/ab;)V
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lokhttp3/t;->a:Lokhttp3/t;

    if-ne p0, v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-static {p1, p2}, Lokhttp3/s;->a(Lokhttp3/ad;Lokhttp3/ab;)Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-interface {p0}, Lokhttp3/t;->a()V

    goto :goto_0
.end method

.method public static a(Lokhttp3/ay;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 193
    .line 1086
    iget-object v2, p0, Lokhttp3/ay;->a:Lokhttp3/as;

    .line 2048
    iget-object v2, v2, Lokhttp3/as;->b:Ljava/lang/String;

    .line 193
    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 2098
    :cond_1
    iget v2, p0, Lokhttp3/ay;->b:I

    .line 198
    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_3

    const/16 v3, 0x130

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 201
    goto :goto_0

    .line 3136
    :cond_3
    iget-object v2, p0, Lokhttp3/ay;->e:Lokhttp3/ab;

    .line 3042
    invoke-static {v2}, Lokhttp3/internal/b/n;->a(Lokhttp3/ab;)J

    move-result-wide v2

    .line 206
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    .line 207
    invoke-virtual {p0, v3}, Lokhttp3/ay;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 208
    goto :goto_0
.end method
