.class public final Lcom/twitter/sdk/android/core/internal/f;
.super Ljava/lang/Object;
.source "TwitterApi.java"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "https://api.twitter.com"

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/internal/f;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/f;->a:Ljava/lang/String;

    .line 20
    return-void
.end method
