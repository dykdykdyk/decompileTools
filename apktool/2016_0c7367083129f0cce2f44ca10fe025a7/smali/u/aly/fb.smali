.class public final Lu/aly/fb;
.super Ljava/lang/Object;
.source "UMCCTimeRange.java"


# direct methods
.method static a(J)J
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 55
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v3, "1970"

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 57
    sub-long v4, p0, v2

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    .line 58
    sub-long v2, p0, v2

    const-wide/32 v6, 0x5265c00

    rem-long/2addr v2, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    const-wide/16 v0, 0x1

    :cond_0
    add-long/2addr v0, v4

    .line 63
    :goto_0
    return-wide v0

    .line 61
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static a(JI)J
    .locals 6

    .prologue
    const/16 v5, 0xc

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 96
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 97
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    .line 98
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 99
    const/4 v0, 0x0

    .line 100
    const/16 v4, 0x3ea

    if-ne p2, v4, :cond_1

    .line 101
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 103
    rem-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v3

    rsub-int v0, v0, 0x168

    .line 111
    :cond_0
    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0

    .line 104
    :cond_1
    const/16 v1, 0x3e9

    if-ne p2, v1, :cond_0

    .line 105
    rem-int/lit8 v0, v3, 0x3c

    rsub-int/lit8 v0, v0, 0x3c

    .line 107
    rem-int/lit8 v1, v2, 0x6

    if-nez v1, :cond_0

    .line 108
    add-int/lit8 v0, v0, 0x3c

    goto :goto_0
.end method

.method public static b(J)I
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 138
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method
