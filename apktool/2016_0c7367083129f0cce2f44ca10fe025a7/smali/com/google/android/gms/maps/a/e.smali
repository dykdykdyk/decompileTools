.class public abstract Lcom/google/android/gms/maps/a/e;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/a/d;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/a/d;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/maps/a/d;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/maps/a/d;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/a/f;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/a/f;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 0
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->a()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v2}, Lcom/google/android/gms/maps/model/CameraPosition;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->b()F

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    :sswitch_3
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->c()F

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    :sswitch_4
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/dynamic/h;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/e;->b(Lcom/google/android/gms/dynamic/h;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_6
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/h;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/a/bd;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/a/bc;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/dynamic/h;Lcom/google/android/gms/maps/a/bc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/h;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/maps/a/bd;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/a/bc;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/dynamic/h;ILcom/google/android/gms/maps/a/bc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->d()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/maps/model/PolylineOptions;->CREATOR:Lcom/google/android/gms/maps/model/r;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/r;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/a/a;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/a;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :sswitch_a
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/maps/model/PolygonOptions;->CREATOR:Lcom/google/android/gms/maps/model/q;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/q;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/PolygonOptions;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/a/s;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/s;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2

    :sswitch_b
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/gms/maps/model/MarkerOptions;->CREATOR:Lcom/google/android/gms/maps/model/o;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/o;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/a/p;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/p;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_3

    :sswitch_c
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/l;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/l;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/a/j;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/j;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_4

    :sswitch_d
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/x;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/x;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;

    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/a/v;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/v;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    goto :goto_5

    :sswitch_e
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->e()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->f()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/e;->a(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->g()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_b

    move v0, v2

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_b
    move v0, v3

    goto :goto_6

    :sswitch_12
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v3, v2

    :cond_c
    invoke-virtual {p0, v3}, Lcom/google/android/gms/maps/a/e;->a(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->h()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_d

    move v3, v2

    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/e;->b(Z)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_e

    move v3, v2

    :cond_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_f
    move v0, v3

    goto :goto_7

    :sswitch_15
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->i()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_10

    move v3, v2

    :cond_10
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    move v3, v2

    :cond_11
    invoke-virtual {p0, v3}, Lcom/google/android/gms/maps/a/e;->c(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->j()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_12

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1000
    if-nez v3, :cond_13

    .line 0
    :goto_8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/g;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1000
    :cond_13
    const-string v0, "com.google.android.gms.maps.internal.ILocationSourceDelegate"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/maps/a/g;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/maps/a/g;

    move-object v1, v0

    goto :goto_8

    :cond_14
    new-instance v1, Lcom/google/android/gms/maps/a/i;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/i;-><init>(Landroid/os/IBinder;)V

    goto :goto_8

    .line 0
    :sswitch_19
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->k()Lcom/google/android/gms/maps/a/ab;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/ab;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_15
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->l()Lcom/google/android/gms/maps/a/p;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/p;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_16
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2000
    if-nez v3, :cond_17

    .line 0
    :goto_9
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/bl;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 2000
    :cond_17
    const-string v0, "com.google.android.gms.maps.internal.IOnCameraChangeListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_18

    instance-of v1, v0, Lcom/google/android/gms/maps/a/bl;

    if-eqz v1, :cond_18

    check-cast v0, Lcom/google/android/gms/maps/a/bl;

    move-object v1, v0

    goto :goto_9

    :cond_18
    new-instance v1, Lcom/google/android/gms/maps/a/bn;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/bn;-><init>(Landroid/os/IBinder;)V

    goto :goto_9

    .line 0
    :sswitch_1c
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3000
    if-nez v3, :cond_19

    .line 0
    :goto_a
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/cv;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 3000
    :cond_19
    const-string v0, "com.google.android.gms.maps.internal.IOnMapClickListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1a

    instance-of v1, v0, Lcom/google/android/gms/maps/a/cv;

    if-eqz v1, :cond_1a

    check-cast v0, Lcom/google/android/gms/maps/a/cv;

    move-object v1, v0

    goto :goto_a

    :cond_1a
    new-instance v1, Lcom/google/android/gms/maps/a/cx;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/cx;-><init>(Landroid/os/IBinder;)V

    goto :goto_a

    .line 0
    :sswitch_1d
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 4000
    if-nez v3, :cond_1b

    .line 0
    :goto_b
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/db;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 4000
    :cond_1b
    const-string v0, "com.google.android.gms.maps.internal.IOnMapLongClickListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1c

    instance-of v1, v0, Lcom/google/android/gms/maps/a/db;

    if-eqz v1, :cond_1c

    check-cast v0, Lcom/google/android/gms/maps/a/db;

    move-object v1, v0

    goto :goto_b

    :cond_1c
    new-instance v1, Lcom/google/android/gms/maps/a/dd;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/dd;-><init>(Landroid/os/IBinder;)V

    goto :goto_b

    .line 0
    :sswitch_1e
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 5000
    if-nez v3, :cond_1d

    .line 0
    :goto_c
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/dh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 5000
    :cond_1d
    const-string v0, "com.google.android.gms.maps.internal.IOnMarkerClickListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1e

    instance-of v1, v0, Lcom/google/android/gms/maps/a/dh;

    if-eqz v1, :cond_1e

    check-cast v0, Lcom/google/android/gms/maps/a/dh;

    move-object v1, v0

    goto :goto_c

    :cond_1e
    new-instance v1, Lcom/google/android/gms/maps/a/dj;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/dj;-><init>(Landroid/os/IBinder;)V

    goto :goto_c

    .line 0
    :sswitch_1f
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 6000
    if-nez v3, :cond_1f

    .line 0
    :goto_d
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/dk;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 6000
    :cond_1f
    const-string v0, "com.google.android.gms.maps.internal.IOnMarkerDragListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_20

    instance-of v1, v0, Lcom/google/android/gms/maps/a/dk;

    if-eqz v1, :cond_20

    check-cast v0, Lcom/google/android/gms/maps/a/dk;

    move-object v1, v0

    goto :goto_d

    :cond_20
    new-instance v1, Lcom/google/android/gms/maps/a/dm;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/dm;-><init>(Landroid/os/IBinder;)V

    goto :goto_d

    .line 0
    :sswitch_20
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 7000
    if-nez v3, :cond_21

    .line 0
    :goto_e
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/cj;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 7000
    :cond_21
    const-string v0, "com.google.android.gms.maps.internal.IOnInfoWindowClickListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_22

    instance-of v1, v0, Lcom/google/android/gms/maps/a/cj;

    if-eqz v1, :cond_22

    check-cast v0, Lcom/google/android/gms/maps/a/cj;

    move-object v1, v0

    goto :goto_e

    :cond_22
    new-instance v1, Lcom/google/android/gms/maps/a/cl;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/cl;-><init>(Landroid/os/IBinder;)V

    goto :goto_e

    .line 0
    :sswitch_21
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 8000
    if-nez v3, :cond_23

    .line 0
    :goto_f
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/bi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 8000
    :cond_23
    const-string v0, "com.google.android.gms.maps.internal.IInfoWindowAdapter"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_24

    instance-of v1, v0, Lcom/google/android/gms/maps/a/bi;

    if-eqz v1, :cond_24

    check-cast v0, Lcom/google/android/gms/maps/a/bi;

    move-object v1, v0

    goto :goto_f

    :cond_24
    new-instance v1, Lcom/google/android/gms/maps/a/bk;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/bk;-><init>(Landroid/os/IBinder;)V

    goto :goto_f

    .line 0
    :sswitch_22
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/google/android/gms/maps/model/CircleOptions;->CREATOR:Lcom/google/android/gms/maps/model/k;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/k;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/CircleOptions;

    :goto_10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/a/g;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_25

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/g;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_25
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_26
    move-object v0, v1

    goto :goto_10

    :sswitch_23
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 9000
    if-nez v3, :cond_27

    .line 0
    :goto_11
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/dq;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 9000
    :cond_27
    const-string v0, "com.google.android.gms.maps.internal.IOnMyLocationChangeListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_28

    instance-of v1, v0, Lcom/google/android/gms/maps/a/dq;

    if-eqz v1, :cond_28

    check-cast v0, Lcom/google/android/gms/maps/a/dq;

    move-object v1, v0

    goto :goto_11

    :cond_28
    new-instance v1, Lcom/google/android/gms/maps/a/ds;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/ds;-><init>(Landroid/os/IBinder;)V

    goto :goto_11

    .line 0
    :sswitch_24
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 10000
    if-nez v3, :cond_29

    .line 0
    :goto_12
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/dn;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 10000
    :cond_29
    const-string v0, "com.google.android.gms.maps.internal.IOnMyLocationButtonClickListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2a

    instance-of v1, v0, Lcom/google/android/gms/maps/a/dn;

    if-eqz v1, :cond_2a

    check-cast v0, Lcom/google/android/gms/maps/a/dn;

    move-object v1, v0

    goto :goto_12

    :cond_2a
    new-instance v1, Lcom/google/android/gms/maps/a/dp;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/dp;-><init>(Landroid/os/IBinder;)V

    goto :goto_12

    .line 0
    :sswitch_25
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/a/az;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/a/ay;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/h;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/ay;Lcom/google/android/gms/dynamic/h;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/google/android/gms/maps/a/e;->a(IIII)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->m()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2b

    move v3, v2

    :cond_2b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c

    move v3, v2

    :cond_2c
    invoke-virtual {p0, v3}, Lcom/google/android/gms/maps/a/e;->d(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 11000
    if-nez v3, :cond_2d

    .line 0
    :goto_13
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/cy;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 11000
    :cond_2d
    const-string v0, "com.google.android.gms.maps.internal.IOnMapLoadedCallback"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2e

    instance-of v1, v0, Lcom/google/android/gms/maps/a/cy;

    if-eqz v1, :cond_2e

    check-cast v0, Lcom/google/android/gms/maps/a/cy;

    move-object v1, v0

    goto :goto_13

    :cond_2e
    new-instance v1, Lcom/google/android/gms/maps/a/da;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/da;-><init>(Landroid/os/IBinder;)V

    goto :goto_13

    .line 0
    :sswitch_2a
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->n()Lcom/google/android/gms/maps/model/a/m;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/m;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_2f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 12000
    if-nez v3, :cond_30

    .line 0
    :goto_14
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/cg;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 12000
    :cond_30
    const-string v0, "com.google.android.gms.maps.internal.IOnIndoorStateChangeListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_31

    instance-of v1, v0, Lcom/google/android/gms/maps/a/cg;

    if-eqz v1, :cond_31

    check-cast v0, Lcom/google/android/gms/maps/a/cg;

    move-object v1, v0

    goto :goto_14

    :cond_31
    new-instance v1, Lcom/google/android/gms/maps/a/ci;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/ci;-><init>(Landroid/os/IBinder;)V

    goto :goto_14

    .line 0
    :sswitch_2c
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    move v3, v2

    :cond_32
    invoke-virtual {p0, v3}, Lcom/google/android/gms/maps/a/e;->e(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/a/df;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/a/de;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/de;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/e;->a(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_33
    move-object v0, v1

    goto :goto_15

    :sswitch_2f
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->o()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->p()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->q()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->r()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->s()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_34

    move v3, v2

    :cond_34
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/e;->b(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_36

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_35
    move-object v0, v1

    goto :goto_16

    :cond_36
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/e;->a(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_36
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/a/az;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/a/ay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/ay;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_37
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 13000
    if-nez v3, :cond_37

    .line 0
    :goto_17
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/dt;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 13000
    :cond_37
    const-string v0, "com.google.android.gms.maps.internal.IOnPoiClickListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_38

    instance-of v1, v0, Lcom/google/android/gms/maps/a/dt;

    if-eqz v1, :cond_38

    check-cast v0, Lcom/google/android/gms/maps/a/dt;

    move-object v1, v0

    goto :goto_17

    :cond_38
    new-instance v1, Lcom/google/android/gms/maps/a/dv;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/dv;-><init>(Landroid/os/IBinder;)V

    goto :goto_17

    .line 0
    :sswitch_38
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/e;->c(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_39
    move-object v0, v1

    goto :goto_18

    :sswitch_39
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->t()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_3a
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 14000
    if-nez v3, :cond_3a

    .line 0
    :goto_19
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/cd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 14000
    :cond_3a
    const-string v0, "com.google.android.gms.maps.internal.IOnGroundOverlayClickListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3b

    instance-of v1, v0, Lcom/google/android/gms/maps/a/cd;

    if-eqz v1, :cond_3b

    check-cast v0, Lcom/google/android/gms/maps/a/cd;

    move-object v1, v0

    goto :goto_19

    :cond_3b
    new-instance v1, Lcom/google/android/gms/maps/a/cf;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/cf;-><init>(Landroid/os/IBinder;)V

    goto :goto_19

    .line 0
    :sswitch_3b
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 15000
    if-nez v3, :cond_3c

    .line 0
    :goto_1a
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/cp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 15000
    :cond_3c
    const-string v0, "com.google.android.gms.maps.internal.IOnInfoWindowLongClickListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3d

    instance-of v1, v0, Lcom/google/android/gms/maps/a/cp;

    if-eqz v1, :cond_3d

    check-cast v0, Lcom/google/android/gms/maps/a/cp;

    move-object v1, v0

    goto :goto_1a

    :cond_3d
    new-instance v1, Lcom/google/android/gms/maps/a/cr;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/cr;-><init>(Landroid/os/IBinder;)V

    goto :goto_1a

    .line 0
    :sswitch_3c
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 16000
    if-nez v3, :cond_3e

    .line 0
    :goto_1b
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/dw;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 16000
    :cond_3e
    const-string v0, "com.google.android.gms.maps.internal.IOnPolygonClickListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3f

    instance-of v1, v0, Lcom/google/android/gms/maps/a/dw;

    if-eqz v1, :cond_3f

    check-cast v0, Lcom/google/android/gms/maps/a/dw;

    move-object v1, v0

    goto :goto_1b

    :cond_3f
    new-instance v1, Lcom/google/android/gms/maps/a/dy;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/dy;-><init>(Landroid/os/IBinder;)V

    goto :goto_1b

    .line 0
    :sswitch_3d
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 17000
    if-nez v3, :cond_40

    .line 0
    :goto_1c
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/cm;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 17000
    :cond_40
    const-string v0, "com.google.android.gms.maps.internal.IOnInfoWindowCloseListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_41

    instance-of v1, v0, Lcom/google/android/gms/maps/a/cm;

    if-eqz v1, :cond_41

    check-cast v0, Lcom/google/android/gms/maps/a/cm;

    move-object v1, v0

    goto :goto_1c

    :cond_41
    new-instance v1, Lcom/google/android/gms/maps/a/co;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/co;-><init>(Landroid/os/IBinder;)V

    goto :goto_1c

    .line 0
    :sswitch_3e
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 18000
    if-nez v3, :cond_42

    .line 0
    :goto_1d
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/ag;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 18000
    :cond_42
    const-string v0, "com.google.android.gms.maps.internal.IOnPolylineClickListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_43

    instance-of v1, v0, Lcom/google/android/gms/maps/a/ag;

    if-eqz v1, :cond_43

    check-cast v0, Lcom/google/android/gms/maps/a/ag;

    move-object v1, v0

    goto :goto_1d

    :cond_43
    new-instance v1, Lcom/google/android/gms/maps/a/ai;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/ai;-><init>(Landroid/os/IBinder;)V

    goto :goto_1d

    .line 0
    :sswitch_3f
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 19000
    if-nez v3, :cond_44

    .line 0
    :goto_1e
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/ca;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 19000
    :cond_44
    const-string v0, "com.google.android.gms.maps.internal.IOnCircleClickListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_45

    instance-of v1, v0, Lcom/google/android/gms/maps/a/ca;

    if-eqz v1, :cond_45

    check-cast v0, Lcom/google/android/gms/maps/a/ca;

    move-object v1, v0

    goto :goto_1e

    :cond_45
    new-instance v1, Lcom/google/android/gms/maps/a/cc;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/cc;-><init>(Landroid/os/IBinder;)V

    goto :goto_1e

    .line 0
    :sswitch_40
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/e;->a([B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_41
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/e;->a(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_42
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/e;->b(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_43
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/a/e;->u()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_44
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_46

    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/m;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/m;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    :goto_1f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/model/LatLngBounds;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_46
    move-object v0, v1

    goto :goto_1f

    :sswitch_45
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 20000
    if-nez v3, :cond_47

    .line 0
    :goto_20
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/bx;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 20000
    :cond_47
    const-string v0, "com.google.android.gms.maps.internal.IOnCameraMoveStartedListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_48

    instance-of v1, v0, Lcom/google/android/gms/maps/a/bx;

    if-eqz v1, :cond_48

    check-cast v0, Lcom/google/android/gms/maps/a/bx;

    move-object v1, v0

    goto :goto_20

    :cond_48
    new-instance v1, Lcom/google/android/gms/maps/a/bz;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/bz;-><init>(Landroid/os/IBinder;)V

    goto :goto_20

    .line 0
    :sswitch_46
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 21000
    if-nez v3, :cond_49

    .line 0
    :goto_21
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/bu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 21000
    :cond_49
    const-string v0, "com.google.android.gms.maps.internal.IOnCameraMoveListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_4a

    instance-of v1, v0, Lcom/google/android/gms/maps/a/bu;

    if-eqz v1, :cond_4a

    check-cast v0, Lcom/google/android/gms/maps/a/bu;

    move-object v1, v0

    goto :goto_21

    :cond_4a
    new-instance v1, Lcom/google/android/gms/maps/a/bw;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/bw;-><init>(Landroid/os/IBinder;)V

    goto :goto_21

    .line 0
    :sswitch_47
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 22000
    if-nez v3, :cond_4b

    .line 0
    :goto_22
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/br;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 22000
    :cond_4b
    const-string v0, "com.google.android.gms.maps.internal.IOnCameraMoveCanceledListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_4c

    instance-of v1, v0, Lcom/google/android/gms/maps/a/br;

    if-eqz v1, :cond_4c

    check-cast v0, Lcom/google/android/gms/maps/a/br;

    move-object v1, v0

    goto :goto_22

    :cond_4c
    new-instance v1, Lcom/google/android/gms/maps/a/bt;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/bt;-><init>(Landroid/os/IBinder;)V

    goto :goto_22

    .line 0
    :sswitch_48
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 23000
    if-nez v3, :cond_4d

    .line 0
    :goto_23
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/a/bo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 23000
    :cond_4d
    const-string v0, "com.google.android.gms.maps.internal.IOnCameraIdleListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_4e

    instance-of v1, v0, Lcom/google/android/gms/maps/a/bo;

    if-eqz v1, :cond_4e

    check-cast v0, Lcom/google/android/gms/maps/a/bo;

    move-object v1, v0

    goto :goto_23

    :cond_4e
    new-instance v1, Lcom/google/android/gms/maps/a/bq;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/a/bq;-><init>(Landroid/os/IBinder;)V

    goto :goto_23

    .line 0
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_24
        0x26 -> :sswitch_25
        0x27 -> :sswitch_26
        0x28 -> :sswitch_27
        0x29 -> :sswitch_28
        0x2a -> :sswitch_29
        0x2c -> :sswitch_2a
        0x2d -> :sswitch_2b
        0x33 -> :sswitch_2c
        0x35 -> :sswitch_2d
        0x36 -> :sswitch_2e
        0x37 -> :sswitch_2f
        0x38 -> :sswitch_30
        0x39 -> :sswitch_31
        0x3a -> :sswitch_32
        0x3b -> :sswitch_33
        0x3c -> :sswitch_34
        0x3d -> :sswitch_35
        0x47 -> :sswitch_36
        0x50 -> :sswitch_37
        0x51 -> :sswitch_38
        0x52 -> :sswitch_39
        0x53 -> :sswitch_3a
        0x54 -> :sswitch_3b
        0x55 -> :sswitch_3c
        0x56 -> :sswitch_3d
        0x57 -> :sswitch_3e
        0x59 -> :sswitch_3f
        0x5a -> :sswitch_40
        0x5c -> :sswitch_41
        0x5d -> :sswitch_42
        0x5e -> :sswitch_43
        0x5f -> :sswitch_44
        0x60 -> :sswitch_45
        0x61 -> :sswitch_46
        0x62 -> :sswitch_47
        0x63 -> :sswitch_48
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
