.class public final Lcom/nut/blehunter/d/c;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# direct methods
.method public static a()J
    .locals 4

    .prologue
    .line 14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method
