.class public final Lu/aly/ev;
.super Ljava/lang/Object;
.source "UMCCAggregatedManager.java"


# static fields
.field private static final a:Lu/aly/ej;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lu/aly/ej;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/ej;-><init>(B)V

    sput-object v0, Lu/aly/ev;->a:Lu/aly/ej;

    return-void
.end method

.method public static synthetic a()Lu/aly/ej;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lu/aly/ev;->a:Lu/aly/ej;

    return-object v0
.end method
