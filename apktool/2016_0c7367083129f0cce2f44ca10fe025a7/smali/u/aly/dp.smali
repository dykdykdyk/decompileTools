.class public final Lu/aly/dp;
.super Ljava/lang/Object;
.source "TMap.java"


# instance fields
.field public final a:B

.field public final b:B

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, v0, v0}, Lu/aly/dp;-><init>(BBI)V

    .line 29
    return-void
.end method

.method public constructor <init>(BBI)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-byte p1, p0, Lu/aly/dp;->a:B

    .line 33
    iput-byte p2, p0, Lu/aly/dp;->b:B

    .line 34
    iput p3, p0, Lu/aly/dp;->c:I

    .line 35
    return-void
.end method
