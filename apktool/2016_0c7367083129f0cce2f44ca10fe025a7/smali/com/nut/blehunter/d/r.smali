.class public final Lcom/nut/blehunter/d/r;
.super Ljava/lang/Object;
.source "WordCountUtils.java"


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    :goto_0
    return v1

    :cond_0
    move v0, v1

    move v2, v1

    .line 17
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 18
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 19
    if-ltz v3, :cond_1

    const/16 v4, 0xff

    if-gt v3, v4, :cond_1

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 17
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 25
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u8ba1\u7b97\u6df7\u5408\u5b57\u7b26\u4e32\u957f\u5ea6\uff1d"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 26
    goto :goto_0
.end method
