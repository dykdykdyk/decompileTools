.class public final Lu/aly/fl;
.super Lu/aly/fc;
.source "MacTracker.java"


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 13
    const-string v0, "mac"

    invoke-direct {p0, v0}, Lu/aly/fc;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lu/aly/fl;->d:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 21
    :try_start_0
    iget-object v1, p0, Lu/aly/fl;->d:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/cr;->n(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
