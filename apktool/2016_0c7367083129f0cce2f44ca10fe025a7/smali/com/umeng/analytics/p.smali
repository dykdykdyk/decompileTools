.class public final Lcom/umeng/analytics/p;
.super Lcom/umeng/analytics/n;
.source "ReportPolicy.java"


# instance fields
.field private final a:J

.field private b:Lu/aly/x;


# direct methods
.method public constructor <init>(Lu/aly/x;)V
    .locals 2

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/umeng/analytics/n;-><init>()V

    .line 234
    const-wide/32 v0, 0xa4cb80

    iput-wide v0, p0, Lcom/umeng/analytics/p;->a:J

    .line 238
    iput-object p1, p0, Lcom/umeng/analytics/p;->b:Lu/aly/x;

    .line 239
    return-void
.end method


# virtual methods
.method public final a(Z)Z
    .locals 4

    .prologue
    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/umeng/analytics/p;->b:Lu/aly/x;

    iget-wide v2, v2, Lu/aly/x;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb80

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 243
    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
