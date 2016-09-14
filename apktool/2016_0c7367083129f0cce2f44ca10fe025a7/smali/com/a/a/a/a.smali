.class public final Lcom/a/a/a/a;
.super Ljava/lang/Object;
.source "Pinyin.java"


# direct methods
.method public static a(C)I
    .locals 3

    .prologue
    const/16 v1, 0x1b58

    .line 37
    add-int/lit16 v0, p0, -0x4e00

    .line 38
    if-ltz v0, :cond_0

    if-ge v0, v1, :cond_0

    .line 39
    sget-object v1, Lcom/a/a/a/b;->a:[B

    sget-object v2, Lcom/a/a/a/b;->b:[B

    invoke-static {v1, v2, v0}, Lcom/a/a/a/a;->a([B[BI)S

    move-result v0

    .line 45
    :goto_0
    return v0

    .line 40
    :cond_0
    if-gt v1, v0, :cond_1

    const/16 v1, 0x36b0

    if-ge v0, v1, :cond_1

    .line 42
    sget-object v1, Lcom/a/a/a/c;->a:[B

    sget-object v2, Lcom/a/a/a/c;->b:[B

    add-int/lit16 v0, v0, -0x1b58

    invoke-static {v1, v2, v0}, Lcom/a/a/a/a;->a([B[BI)S

    move-result v0

    goto :goto_0

    .line 45
    :cond_1
    sget-object v1, Lcom/a/a/a/d;->a:[B

    sget-object v2, Lcom/a/a/a/d;->b:[B

    add-int/lit16 v0, v0, -0x36b0

    invoke-static {v1, v2, v0}, Lcom/a/a/a/a;->a([B[BI)S

    move-result v0

    goto :goto_0
.end method

.method private static a([B[BI)S
    .locals 4

    .prologue
    .line 52
    div-int/lit8 v1, p2, 0x8

    .line 53
    rem-int/lit8 v2, p2, 0x8

    .line 55
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 57
    aget-byte v1, p0, v1

    sget-object v3, Lcom/a/a/a/e;->a:[I

    aget v2, v3, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 58
    or-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    .line 60
    :cond_0
    return v0
.end method
