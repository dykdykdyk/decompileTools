.class final Lcom/nut/blehunter/ui/widget/ab;
.super Ljava/lang/Object;
.source "WeekDatePicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3166
    new-instance v0, Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;-><init>(Landroid/os/Parcel;B)V

    .line 1164
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1164
    .line 2170
    new-array v0, p1, [Lcom/nut/blehunter/ui/widget/WeekDatePicker$SavedState;

    .line 1164
    return-object v0
.end method
