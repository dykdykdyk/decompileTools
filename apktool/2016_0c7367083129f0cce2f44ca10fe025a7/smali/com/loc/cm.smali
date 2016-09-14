.class public final Lcom/loc/cm;
.super Ljava/lang/Object;
.source "CgiManager.java"


# instance fields
.field a:Landroid/content/Context;

.field b:I

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/cl;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Landroid/telephony/TelephonyManager;

.field f:Ljava/lang/Object;

.field g:Lorg/json/JSONObject;

.field h:Landroid/telephony/PhoneStateListener;

.field volatile i:Landroid/telephony/CellLocation;

.field j:Landroid/os/HandlerThread;

.field k:Z

.field l:Ljava/lang/Object;

.field volatile m:Z

.field n:Landroid/telephony/PhoneStateListener;

.field private o:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/loc/cm;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/cm;->c:Ljava/util/ArrayList;

    const/16 v0, -0x71

    iput v0, p0, Lcom/loc/cm;->d:I

    iput-object v2, p0, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/cm;->o:J

    iput-object v2, p0, Lcom/loc/cm;->j:Landroid/os/HandlerThread;

    iput-boolean v3, p0, Lcom/loc/cm;->k:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/cm;->l:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/loc/cm;->m:Z

    iput-object v2, p0, Lcom/loc/cm;->n:Landroid/telephony/PhoneStateListener;

    iput-object p2, p0, Lcom/loc/cm;->g:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/loc/cm;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/cm;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-static {v0, v1}, Lcom/loc/dn;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Landroid/telephony/CellLocation;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v8, v0

    move v0, v1

    move-object v1, v2

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_c

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b

    :try_start_0
    const-string v2, "android.telephony.CellInfoGsm"

    invoke-virtual {v9, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v2, "android.telephony.CellInfoWcdma"

    invoke-virtual {v9, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v2, "android.telephony.CellInfoLte"

    invoke-virtual {v9, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v2, "android.telephony.CellInfoCdma"

    invoke-virtual {v9, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/4 v2, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v4, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    if-lez v6, :cond_a

    const-string v2, "getCellIdentity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    if-nez v2, :cond_7

    move v0, v6

    move-object v2, v7

    :goto_3
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move-object v7, v2

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    if-eqz v4, :cond_4

    const/4 v6, 0x2

    :try_start_3
    invoke-virtual {v5, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_2

    :cond_4
    :try_start_4
    invoke-virtual {v10, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result v4

    if-eqz v4, :cond_5

    const/4 v6, 0x3

    :try_start_5
    invoke-virtual {v10, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    goto :goto_2

    :cond_5
    :try_start_6
    invoke-virtual {v11, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x4

    :try_start_7
    invoke-virtual {v11, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    move-object v0, v2

    goto :goto_2

    :cond_7
    const/4 v0, 0x4

    if-ne v6, v0, :cond_8

    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    const-string v1, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/loc/dh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v4

    const-string v1, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/loc/dh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v5

    const-string v1, "getBasestationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/loc/dh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    const-string v3, "getLongitude"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v10}, Lcom/loc/dh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string v10, "getLatitude"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Lcom/loc/dh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    move-object v1, v7

    :goto_4
    const/4 v2, 0x4

    if-eq v6, v2, :cond_1

    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x3

    if-ne v6, v0, :cond_9

    :try_start_9
    const-string v0, "getTac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/loc/dh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    const-string v3, "getCi"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/loc/dh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    new-instance v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v2}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    :try_start_a
    invoke-virtual {v2, v0, v3}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    move-object v0, v1

    move-object v1, v2

    goto :goto_4

    :cond_9
    :try_start_b
    const-string v0, "getLac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/loc/dh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    const-string v3, "getCid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/loc/dh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    new-instance v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v2}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    :try_start_c
    invoke-virtual {v2, v0, v3}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3

    move-object v0, v1

    move-object v1, v2

    goto :goto_4

    :cond_a
    move v0, v6

    move-object v2, v7

    goto/16 :goto_3

    :catch_0
    move-exception v2

    move-object v3, v2

    move-object v2, v7

    :goto_5
    const-string v4, "CgiManager"

    const-string v5, "getCgi"

    invoke-static {v3, v4, v5}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v2, v7

    move v0, v6

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v3, v1

    move-object v2, v7

    move-object v1, v0

    move v0, v6

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v3, v0

    move v0, v6

    goto :goto_5

    :cond_b
    move-object v2, v7

    goto/16 :goto_3

    :cond_c
    move v6, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_4
.end method

.method private a(Landroid/telephony/NeighboringCellInfo;)Lcom/loc/cl;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/loc/dn;->c()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/loc/cl;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/loc/cl;-><init>(I)V

    iget-object v2, p0, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/loc/dn;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    iput-object v3, v1, Lcom/loc/cl;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/loc/cl;->b:Ljava/lang/String;

    const-string v2, "getLac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/dh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Lcom/loc/cl;->c:I

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    iput v2, v1, Lcom/loc/cl;->d:I

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v2

    invoke-static {v2}, Lcom/loc/dn;->a(I)I

    move-result v2

    iput v2, v1, Lcom/loc/cl;->j:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CgiManager"

    const-string v3, "getGsm"

    invoke-static {v1, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/telephony/CellLocation;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/cm;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p1}, Lcom/loc/cm;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v4, p0, Lcom/loc/cm;->b:I

    iget-object v0, p0, Lcom/loc/cm;->c:Ljava/util/ArrayList;

    .line 2000
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    new-instance v1, Lcom/loc/cl;

    invoke-direct {v1, v4}, Lcom/loc/cl;-><init>(I)V

    iget-object v2, p0, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/loc/dn;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    iput-object v3, v1, Lcom/loc/cl;->a:Ljava/lang/String;

    aget-object v2, v2, v4

    iput-object v2, v1, Lcom/loc/cl;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    iput v2, v1, Lcom/loc/cl;->c:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    iput v2, v1, Lcom/loc/cl;->d:I

    iget v2, p0, Lcom/loc/cm;->d:I

    iput v2, v1, Lcom/loc/cl;->j:I

    .line 0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/loc/cm;->a(II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/loc/cm;->a(Landroid/telephony/NeighboringCellInfo;)Lcom/loc/cl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/loc/cm;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/loc/cm;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/cm;I)V
    .locals 3

    .prologue
    const/16 v0, -0x71

    .line 3000
    if-ne p1, v0, :cond_1

    iput v0, p0, Lcom/loc/cm;->d:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/loc/cm;->d:I

    iget v0, p0, Lcom/loc/cm;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/loc/cm;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/loc/cm;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cl;

    iget v1, p0, Lcom/loc/cm;->d:I

    iput v1, v0, Lcom/loc/cl;->j:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "hdlCgiSigStrenChange"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(II)Z
    .locals 3

    const v2, 0xffff

    const/4 v1, -0x1

    const/4 v0, 0x1

    if-eq p0, v1, :cond_0

    if-eqz p0, :cond_0

    if-gt p0, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    const v1, 0xfffffff

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public static e()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.telephony.MSimTelephonyManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    :try_start_1
    const-string v1, "android.telephony.TelephonyManager2"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x2

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private f()Landroid/telephony/CellLocation;
    .locals 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/loc/cm;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :cond_2
    :try_start_1
    const-string v0, "getAllCellInfo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/loc/cm;->a(Ljava/util/List;)Landroid/telephony/CellLocation;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    :goto_2
    invoke-virtual {p0, v1}, Lcom/loc/cm;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    :try_start_2
    const-string v0, "getCellLocationExt"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v0, v3}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Landroid/telephony/CellLocation;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    move-object v1, v0

    :goto_4
    invoke-virtual {p0, v1}, Lcom/loc/cm;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    :try_start_3
    const-string v0, "getCellLocationGemini"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v0, v3}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Landroid/telephony/CellLocation;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/loc/cm;->a(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_5
    move-object v0, v1

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_3
.end method

.method private g()Landroid/telephony/CellLocation;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/cm;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/loc/cm;->h()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "getCellLocation"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v0}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    :goto_1
    if-nez v2, :cond_1

    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v3, v4, v0}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    :cond_1
    :goto_2
    if-nez v2, :cond_4

    :try_start_3
    const-string v0, "getCellLocationGemini"
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v4, 0x1

    :try_start_4
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v0, v4}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    :goto_3
    if-nez v0, :cond_2

    :try_start_5
    const-string v0, "getAllCellInfo"
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v2, 0x0

    :try_start_6
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :goto_4
    :try_start_7
    invoke-static {v0}, Lcom/loc/cm;->a(Ljava/util/List;)Landroid/telephony/CellLocation;

    move-result-object v0

    :cond_2
    :goto_5
    if-eqz v0, :cond_3

    check-cast v0, Landroid/telephony/CellLocation;

    :goto_6
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CgiManager"

    const-string v5, "getSim2Cgi15"

    invoke-static {v0, v2, v5}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v4, "CgiManager"

    const-string v5, "getSim2Cgi14"

    invoke-static {v0, v4, v5}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v2, "CgiManager"

    const-string v3, "getSim2Cgi"

    invoke-static {v0, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v0, v1

    goto :goto_6

    :catch_3
    move-exception v0

    :try_start_8
    const-string v4, "CgiManager"

    const-string v5, "getSim2Cgi13"

    invoke-static {v0, v4, v5}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v0, v2

    goto :goto_3

    :catch_4
    move-exception v0

    const-string v2, "CgiManager"

    const-string v3, "getSim2Cgi1"

    invoke-static {v0, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    move-object v0, v1

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_5
.end method

.method private static h()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {}, Lcom/loc/cm;->e()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    return-object v1

    :pswitch_0
    const-string v0, "android.telephony.MSimTelephonyManager"

    goto :goto_0

    :pswitch_1
    const-string v0, "android.telephony.TelephonyManager2"

    goto :goto_0

    :pswitch_2
    const-string v0, "android.telephony.TelephonyManager"

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CgiManager"

    const-string v3, "getSim2TmClass"

    invoke-static {v0, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method final declared-synchronized a(ZZ)Landroid/telephony/CellLocation;
    .locals 6

    .prologue
    const v5, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/loc/cm;->m:Z

    iget-boolean v0, p0, Lcom/loc/cm;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/loc/cm;->f()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loc/cm;->a(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/loc/cm;->g()Landroid/telephony/CellLocation;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/loc/cm;->a(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lcom/loc/cm;->i:Landroid/telephony/CellLocation;

    :cond_1
    iget-object v0, p0, Lcom/loc/cm;->i:Landroid/telephony/CellLocation;

    invoke-virtual {p0, v0}, Lcom/loc/cm;->a(Landroid/telephony/CellLocation;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/loc/cm;->m:Z

    iget-object v3, p0, Lcom/loc/cm;->i:Landroid/telephony/CellLocation;

    invoke-static {v0, v3}, Lcom/loc/dn;->a(ZLandroid/telephony/CellLocation;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/loc/cm;->i:Landroid/telephony/CellLocation;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/loc/cm;->i:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0, p2}, Lcom/loc/cm;->a(Landroid/telephony/CellLocation;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v3, p0, Lcom/loc/cm;->i:Landroid/telephony/CellLocation;

    .line 1000
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/loc/cm;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/loc/dn;->c()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    const/4 v4, 0x5

    if-lt v0, v4, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/loc/cm;->f:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "mGsmCellLoc"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lcom/loc/cm;->a(Landroid/telephony/CellLocation;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0, v0, p2}, Lcom/loc/cm;->a(Landroid/telephony/CellLocation;Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    :goto_2
    if-nez v0, :cond_3

    :cond_5
    :try_start_5
    invoke-virtual {p0, v3}, Lcom/loc/cm;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/cm;->b:I

    iget-object v0, p0, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/loc/dn;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/loc/cl;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/loc/cl;-><init>(I)V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/loc/cl;->a:Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/loc/cl;->b:Ljava/lang/String;

    const-string v0, "getSystemId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/loc/dh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v1, Lcom/loc/cl;->g:I

    const-string v0, "getNetworkId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/loc/dh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v1, Lcom/loc/cl;->h:I

    const-string v0, "getBaseStationId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/loc/dh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v1, Lcom/loc/cl;->i:I

    iget v0, p0, Lcom/loc/cm;->d:I

    iput v0, v1, Lcom/loc/cl;->j:I

    const-string v0, "getBaseStationLatitude"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/loc/dh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v1, Lcom/loc/cl;->e:I

    const-string v0, "getBaseStationLongitude"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/loc/dh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v1, Lcom/loc/cl;->f:I

    iget v0, v1, Lcom/loc/cl;->e:I

    if-ltz v0, :cond_6

    iget v0, v1, Lcom/loc/cl;->f:I

    if-ltz v0, :cond_6

    iget v0, v1, Lcom/loc/cl;->e:I

    if-eq v0, v5, :cond_6

    iget v0, v1, Lcom/loc/cl;->f:I

    if-eq v0, v5, :cond_6

    iget v0, v1, Lcom/loc/cl;->e:I

    iget v2, v1, Lcom/loc/cl;->f:I

    if-ne v0, v2, :cond_7

    iget v0, v1, Lcom/loc/cl;->e:I

    if-lez v0, :cond_7

    :cond_6
    const/4 v0, 0x0

    iput v0, v1, Lcom/loc/cl;->e:I

    const/4 v0, 0x0

    iput v0, v1, Lcom/loc/cl;->f:I

    :cond_7
    iget-object v0, p0, Lcom/loc/cm;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/loc/cm;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "CgiManager"

    const-string v2, "hdlCdmaLocChange"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :cond_8
    move v0, v2

    goto/16 :goto_2

    .line 0
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a()Lcom/loc/cl;
    .locals 2

    iget-object v0, p0, Lcom/loc/cm;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cl;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/telephony/CellLocation;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/loc/cm;->m:Z

    invoke-static {v2, p1}, Lcom/loc/dn;->a(ZLandroid/telephony/CellLocation;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v1, v0

    :goto_2
    if-nez v1, :cond_0

    const/16 v0, 0x9

    iput v0, p0, Lcom/loc/cm;->b:I

    goto :goto_0

    :pswitch_0
    :try_start_0
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/loc/cm;->a(II)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "CgiManager"

    const-string v3, "cgiUseful Cgi.iGsmT"

    invoke-static {v1, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto :goto_2

    :pswitch_1
    :try_start_1
    const-string v2, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/dh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/dh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_2

    const-string v2, "getBaseStationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/dh;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-gez v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    move v1, v0

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "CgiManager"

    const-string v3, "cgiUseful Cgi.iCdmaT"

    invoke-static {v1, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Z)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-wide v2, p0, Lcom/loc/cm;->o:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/cm;->o:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final b()Landroid/telephony/CellLocation;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loc/cm;->a(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/loc/cm;->i:Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "CgiManager"

    const-string v3, "getCellLocation"

    invoke-static {v1, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final c()V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/loc/cm;->g:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "cellupdate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cellupdate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/cm;->o:J

    :cond_1
    return-void

    :catch_0
    move-exception v1

    const-string v2, "CgiManager"

    const-string v3, "updateCgi1"

    invoke-static {v1, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "updateCgi"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method final d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cm;->i:Landroid/telephony/CellLocation;

    const/16 v0, 0x9

    iput v0, p0, Lcom/loc/cm;->b:I

    iget-object v0, p0, Lcom/loc/cm;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
