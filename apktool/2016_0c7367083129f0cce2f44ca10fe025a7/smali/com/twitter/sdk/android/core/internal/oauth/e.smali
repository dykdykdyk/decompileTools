.class final Lcom/twitter/sdk/android/core/internal/oauth/e;
.super Ljava/lang/Object;
.source "OAuthResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2016
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;-><init>(Landroid/os/Parcel;B)V

    .line 14
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    .line 1020
    new-array v0, p1, [Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    .line 14
    return-object v0
.end method
