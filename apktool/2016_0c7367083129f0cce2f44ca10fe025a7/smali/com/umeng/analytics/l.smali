.class public final Lcom/umeng/analytics/l;
.super Lcom/umeng/analytics/n;
.source "ReportPolicy.java"


# instance fields
.field private a:J

.field private b:Lu/aly/x;


# direct methods
.method public constructor <init>(Lu/aly/x;)V
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/umeng/analytics/n;-><init>()V

    .line 143
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/umeng/analytics/l;->a:J

    .line 147
    iput-object p1, p0, Lcom/umeng/analytics/l;->b:Lu/aly/x;

    .line 148
    return-void
.end method


# virtual methods
.method public final a(Z)Z
    .locals 4

    .prologue
    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/umeng/analytics/l;->b:Lu/aly/x;

    iget-wide v2, v2, Lu/aly/x;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/umeng/analytics/l;->a:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 152
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
