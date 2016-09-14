.class final Lu/aly/f;
.super Lcom/umeng/analytics/z;
.source "CacheImpl.java"


# instance fields
.field final synthetic a:Lu/aly/e;


# direct methods
.method constructor <init>(Lu/aly/e;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lu/aly/f;->a:Lu/aly/e;

    invoke-direct {p0}, Lcom/umeng/analytics/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lu/aly/f;->a:Lu/aly/e;

    .line 1085
    sget-object v1, Lu/aly/e;->f:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/cr;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1086
    invoke-virtual {v0}, Lu/aly/e;->c()V

    :goto_0
    return-void

    .line 1088
    :cond_0
    const-string v0, "network is unavailable"

    invoke-static {v0}, Lu/aly/ct;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
