.class public final Lu/aly/aj;
.super Ljava/lang/Object;
.source "UMEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:D

.field public b:D

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-wide v0, p0, Lu/aly/aj;->a:D

    .line 215
    iput-wide v0, p0, Lu/aly/aj;->b:D

    .line 216
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu/aly/aj;->c:J

    return-void
.end method
