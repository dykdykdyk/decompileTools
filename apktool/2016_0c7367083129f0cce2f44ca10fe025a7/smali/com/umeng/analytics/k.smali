.class public final Lcom/umeng/analytics/k;
.super Lcom/umeng/analytics/n;
.source "ReportPolicy.java"


# static fields
.field private static a:J

.field private static b:J


# instance fields
.field private c:J

.field private d:Lu/aly/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    const-wide/32 v0, 0x15f90

    sput-wide v0, Lcom/umeng/analytics/k;->a:J

    .line 104
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/umeng/analytics/k;->b:J

    return-void
.end method

.method public constructor <init>(Lu/aly/x;J)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/umeng/analytics/n;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/umeng/analytics/k;->d:Lu/aly/x;

    .line 111
    invoke-virtual {p0, p2, p3}, Lcom/umeng/analytics/k;->a(J)V

    .line 112
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 123
    sget-wide v0, Lcom/umeng/analytics/k;->a:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    sget-wide v0, Lcom/umeng/analytics/k;->b:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 124
    iput-wide p1, p0, Lcom/umeng/analytics/k;->c:J

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    sget-wide v0, Lcom/umeng/analytics/k;->a:J

    iput-wide v0, p0, Lcom/umeng/analytics/k;->c:J

    goto :goto_0
.end method

.method public final a(Z)Z
    .locals 4

    .prologue
    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/umeng/analytics/k;->d:Lu/aly/x;

    iget-wide v2, v2, Lu/aly/x;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/umeng/analytics/k;->c:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 116
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
