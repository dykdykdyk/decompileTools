.class public abstract Lcom/twitter/sdk/android/core/c;
.super Ljava/lang/Object;
.source "AuthToken.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/internal/oauth/a;


# instance fields
.field protected final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/c;->a:J

    .line 18
    return-void
.end method
