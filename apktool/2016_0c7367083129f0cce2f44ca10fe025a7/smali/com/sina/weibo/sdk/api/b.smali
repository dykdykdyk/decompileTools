.class final Lcom/sina/weibo/sdk/api/b;
.super Ljava/lang/Object;
.source "ImageObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sina/weibo/sdk/api/ImageObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1047
    new-instance v0, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v0, p1}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>(Landroid/os/Parcel;)V

    .line 1
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    .line 1051
    new-array v0, p1, [Lcom/sina/weibo/sdk/api/ImageObject;

    .line 1
    return-object v0
.end method
