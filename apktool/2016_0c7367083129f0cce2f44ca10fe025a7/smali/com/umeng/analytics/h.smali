.class public final Lcom/umeng/analytics/h;
.super Lcom/umeng/analytics/n;
.source "ReportPolicy.java"


# instance fields
.field private a:Lu/aly/aq;

.field private b:Lu/aly/x;


# direct methods
.method public constructor <init>(Lu/aly/x;Lu/aly/aq;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/umeng/analytics/n;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/umeng/analytics/h;->b:Lu/aly/x;

    .line 177
    iput-object p2, p0, Lcom/umeng/analytics/h;->a:Lu/aly/aq;

    .line 178
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/umeng/analytics/h;->a:Lu/aly/aq;

    invoke-virtual {v0}, Lu/aly/aq;->a()Z

    move-result v0

    return v0
.end method

.method public final a(Z)Z
    .locals 6

    .prologue
    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 182
    iget-object v0, p0, Lcom/umeng/analytics/h;->a:Lu/aly/aq;

    .line 1086
    iget v0, v0, Lu/aly/aq;->a:I

    packed-switch v0, :pswitch_data_0

    .line 1095
    const-wide/16 v0, 0x0

    .line 184
    :goto_0
    iget-object v4, p0, Lcom/umeng/analytics/h;->b:Lu/aly/x;

    iget-wide v4, v4, Lu/aly/x;->c:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 188
    :goto_1
    return v0

    .line 1088
    :pswitch_0
    const-wide/32 v0, 0xdbba00

    goto :goto_0

    .line 1090
    :pswitch_1
    const-wide/32 v0, 0x1b77400

    goto :goto_0

    .line 1092
    :pswitch_2
    const-wide/32 v0, 0x5265c00

    goto :goto_0

    .line 188
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1086
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
