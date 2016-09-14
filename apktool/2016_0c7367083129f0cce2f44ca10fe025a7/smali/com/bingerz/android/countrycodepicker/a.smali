.class final Lcom/bingerz/android/countrycodepicker/a;
.super Ljava/lang/Object;
.source "CountryCode.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/bingerz/android/countrycodepicker/CountryCode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2105
    new-instance v0, Lcom/bingerz/android/countrycodepicker/CountryCode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/bingerz/android/countrycodepicker/CountryCode;-><init>(Landroid/os/Parcel;B)V

    .line 103
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    .line 1109
    new-array v0, p1, [Lcom/bingerz/android/countrycodepicker/CountryCode;

    .line 103
    return-object v0
.end method
