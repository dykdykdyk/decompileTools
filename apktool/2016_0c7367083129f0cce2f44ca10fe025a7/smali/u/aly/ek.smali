.class final Lu/aly/ek;
.super Ljava/lang/Object;
.source "UMCCAggregatedManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lu/aly/ej;


# direct methods
.method constructor <init>(Lu/aly/ej;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lu/aly/ek;->a:Lu/aly/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 65
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 66
    iget-object v0, p0, Lu/aly/ek;->a:Lu/aly/ej;

    .line 1038
    iget-object v0, v0, Lu/aly/ej;->h:Lu/aly/eu;

    .line 66
    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lu/aly/ek;->a:Lu/aly/ej;

    new-instance v1, Lu/aly/eu;

    iget-object v2, p0, Lu/aly/ek;->a:Lu/aly/ej;

    invoke-direct {v1, v2}, Lu/aly/eu;-><init>(Lu/aly/ej;)V

    .line 2038
    iput-object v1, v0, Lu/aly/ej;->h:Lu/aly/eu;

    .line 70
    :cond_0
    iget-object v0, p0, Lu/aly/ek;->a:Lu/aly/ej;

    .line 3123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3124
    iget-object v1, v0, Lu/aly/ej;->h:Lu/aly/eu;

    const/16 v4, 0x30

    .line 4073
    const/16 v5, 0x3e9

    invoke-static {v2, v3, v5}, Lu/aly/fb;->a(JI)J

    move-result-wide v6

    .line 3124
    invoke-virtual {v1, v4, v6, v7}, Lu/aly/eu;->sendEmptyMessageDelayed(IJ)Z

    .line 3125
    iget-object v0, v0, Lu/aly/ej;->h:Lu/aly/eu;

    const/16 v1, 0x31

    .line 4083
    const/16 v4, 0x3ea

    invoke-static {v2, v3, v4}, Lu/aly/fb;->a(JI)J

    move-result-wide v2

    .line 3125
    invoke-virtual {v0, v1, v2, v3}, Lu/aly/eu;->sendEmptyMessageDelayed(IJ)Z

    .line 71
    return-void
.end method
