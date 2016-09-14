.class final Lu/aly/ez;
.super Ljava/lang/Object;
.source "UMCCStorageManager.java"


# static fields
.field private static final a:Lu/aly/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lu/aly/ey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/ey;-><init>(B)V

    sput-object v0, Lu/aly/ez;->a:Lu/aly/ey;

    return-void
.end method

.method static synthetic a()Lu/aly/ey;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lu/aly/ez;->a:Lu/aly/ey;

    return-object v0
.end method
