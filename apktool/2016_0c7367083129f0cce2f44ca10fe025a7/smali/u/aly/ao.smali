.class public final Lu/aly/ao;
.super Ljava/lang/Object;
.source "UMEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-wide v0, p0, Lu/aly/ao;->a:J

    .line 209
    iput-wide v0, p0, Lu/aly/ao;->b:J

    return-void
.end method
