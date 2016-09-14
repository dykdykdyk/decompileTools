.class public abstract Lorg/android/agoo/service/ElectionReceiverService$Stub;
.super Landroid/os/Binder;
.source "ElectionReceiverService.java"

# interfaces
.implements Lorg/android/agoo/service/ElectionReceiverService;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.android.agoo.service.ElectionReceiverService"

.field static final TRANSACTION_sendElectionResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "org.android.agoo.service.ElectionReceiverService"

    invoke-virtual {p0, p0, v0}, Lorg/android/agoo/service/ElectionReceiverService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/android/agoo/service/ElectionReceiverService;
    .locals 2

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v0, "org.android.agoo.service.ElectionReceiverService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/android/agoo/service/ElectionReceiverService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lorg/android/agoo/service/ElectionReceiverService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lorg/android/agoo/service/ElectionReceiverService$Stub$a;

    invoke-direct {v0, p0}, Lorg/android/agoo/service/ElectionReceiverService$Stub$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v0, "org.android.agoo.service.ElectionReceiverService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v0, "org.android.agoo.service.ElectionReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 56
    :goto_1
    invoke-virtual {p0, v0}, Lorg/android/agoo/service/ElectionReceiverService$Stub;->sendElectionResult(Landroid/content/Intent;)Z

    move-result v0

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
